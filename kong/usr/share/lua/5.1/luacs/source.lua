local utf8 = require("lua-utf8")

local Source = {}

local methods = {}

local metatable = {}
function metatable.__index(parser, key)
  return methods[key]
end

function methods:inspect()
  return
    self.data:sub(1, self.position - 1) .. "|@|" ..
    self.data:sub(self.position)
end

function methods:peek()
  return self.data[self.position]
end

function methods:seek(position)
  self.position = position
end

function methods:match(pattern)
  local start, last = self.data:find("^" .. pattern, self.position)
  if start then
    self:seek(last + 1)
    return self.data:sub(start, last)
  else
    return nil
  end
end

function methods:match_whitespaces()
  local pattern = "[ \t\r\n\f]+"
  local whitespaces = self:match(pattern)
  while true do
    local comment = self:match_comment()
    if not comment then
      break
    end
    local sub_whitespaces = self:match(pattern)
    if sub_whitespaces then
      if whitespaces then
        whitespaces = whitespaces .. sub_whitespaces
      else
        whitespaces = sub_whitespaces
      end
    end
  end
  return whitespaces
end

function methods:match_comment_c_style()
  local comment = self:match("/%*.-%*/")
  if comment then
    return comment:sub(3, -3)
  else
    return nil
  end
end

function methods:match_comment_sgml_style()
  local comment = self:match("<!%-%-.-%-%->")
  if comment then
    return comment:sub(5, -4)
  else
    return nil
  end
end

function methods:match_comment()
  local content = self:match_comment_c_style()
  if content then
    return content
  end

  content = self:match_comment_sgml_style()
  if content then
    return content
  end

  return nil
end

function methods:match_hyphen()
  return self:match("-")
end

function methods:match_non_ascii()
  local data = self.data:sub(self.position)
  if #data == 0 then
    return nil
  end

  local code_point = utf8.codepoint(data)
  if code_point < 0x80 then
    return nil
  end

  local next_offset, next_code_point = utf8.offset(data, 1)
  if next_offset then
    self:seek(self.position + next_offset - 1)
  else
    self:seek(#self.data + 1)
  end
  return utf8.char(code_point)
end

function methods:match_escape()
  local position = self.position

  local unicode_escape = self:match("\\[0-9a-zA-Z]+")
  if unicode_escape then
    if #unicode_escape > 7 then
      self:seek(self.position - (#unicode_escape - 7))
      unicode_escape = unicode_escape:sub(1, 7)
    end
    local code_point = tonumber("0x" .. unicode_escape:sub(2))
    if not self:match("\r\n") then
      self:match("[ \n\r\t\f]")
    end
    return utf8.char(code_point)
  end

  self:seek(position)
  local escape = self:match("\\[^\n\r\f0-9a-zA-Z]")
  if escape then
    return escape:sub(2)
  end

  return nil
end

function methods:match_name_character(is_start)
  local in_ascii
  if is_start then
    in_ascii = self:match("[_a-zA-Z]")
  else
    in_ascii = self:match("[_a-zA-Z0-9-]")
  end
  if in_ascii then
    return in_ascii
  end

  local non_ascii = self:match_non_ascii()
  if non_ascii then
    return non_ascii
  end

  local escaped = self:match_escape()
  if escaped then
    return escaped
  end

  return nil
end

function methods:match_ident()
  local position = self.position
  local ident = ""

  local hyphen = self:match_hyphen()
  if hyphen then
    ident = ident .. hyhpen
  end

  local name_start = self:match_name_character(true)
  if not name_start then
    self:seek(position)
    return nil
  end
  ident = ident .. name_start

  while true do
    local name_character = self:match_name_character(false)
    if not name_character then
      break
    end
    ident = ident .. name_character
  end

  return ident
end

function methods:match_string_character()
  if self:match("\\\r\n") then
    return ""
  end

  if self:match("\\[\n\r\f]") then
    return ""
  end

  local non_ascii = self:match_non_ascii()
  if non_ascii then
    return non_ascii
  end

  local escaped = self:match_escape()
  if escaped then
    return escaped
  end

  local normal_character = self:match("[^\n\r\f\\]")
  if normal_character then
    return normal_character
  end

  return nil
end

function methods:match_string()
  local position = self.position

  local delimiter = self:match("[\"']")
  if not delimiter then
    return nil
  end

  local content = ""
  while true do
    if self:match(delimiter) then
      return content
    end

    local character = self:match_string_character()
    if character then
      content = content .. character
    else
      self:seek(position)
      return nil
    end
  end
end

function methods:match_number()
  local position = self.position

  local number = self:match("%d+")
  if not number then
    number = self:match("%d?%.%d+")
  end

  if number then
    return tonumber(number)
  else
    self:seek(position)
    return nil
  end
end

function methods:match_dimension()
  local position = self.position

  local number = self:match_number()
  if not number then
    return nil
  end

  local ident = self:match_ident()
  if not ident then
    self:seek(position)
    return nil
  end

  return self.data:sub(position, self.position - 1)
end

function methods:match_namespace_prefix()
  local position = self.position

  if self:match("|") then
    return ""
  end

  local prefix = self:match("-?[_%a][_%a%d-]*|")
  if not prefix then
    prefix = self:match("%*|")
  end

  if prefix then
    return prefix:sub(0, -2)
  else
    return nil
  end
end

function methods:match_hash()
  local matched = self:match("#[_%a%d-]+")
  if matched then
    return matched:sub(2)
  else
    return matched
  end
end

function Source.new(data)
  local source = {
    data = data,
    position = 1,
  }
  setmetatable(source, metatable)
  return source
end

return Source
