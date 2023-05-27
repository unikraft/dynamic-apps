local Parser = {}

local Source = require("luacs.source")

local methods = {}

local metatable = {}
function metatable.__index(parser, key)
  return methods[key]
end

-- Specification: https://www.w3.org/TR/selectors-3/
--
-- Grammar:
--
-- selectors_group
--   : selector [ COMMA S* selector ]*
--   ;
--
-- selector
--   : simple_selector_sequence [ combinator simple_selector_sequence ]*
--   ;
--
-- combinator
--   /* combinators can be surrounded by whitespace */
--   : PLUS S* | GREATER S* | TILDE S* | S+
--   ;
--
-- simple_selector_sequence
--   : [ type_selector | universal ]
--     [ HASH | class | attrib | pseudo | negation ]*
--   | [ HASH | class | attrib | pseudo | negation ]+
--   ;
--
-- type_selector
--   : [ namespace_prefix ]? element_name
--   ;
--
-- namespace_prefix
--   : [ IDENT | '*' ]? '|'
--   ;
--
-- element_name
--   : IDENT
--   ;
--
-- universal
--   : [ namespace_prefix ]? '*'
--   ;
--
-- class
--   : '.' IDENT
--   ;
--
-- attrib
--   : '[' S* [ namespace_prefix ]? IDENT S*
--         [ [ PREFIXMATCH |
--             SUFFIXMATCH |
--             SUBSTRINGMATCH |
--             '=' |
--             INCLUDES |
--             DASHMATCH ] S* [ IDENT | STRING ] S*
--         ]? ']'
--   ;
--
-- pseudo
--   /* '::' starts a pseudo-element, ':' a pseudo-class */
--   /* Exceptions: :first-line, :first-letter, :before and :after. */
--   /* Note that pseudo-elements are restricted to one per selector and */
--   /* occur only in the last simple_selector_sequence. */
--   : ':' ':'? [ IDENT | functional_pseudo ]
--   ;
--
-- functional_pseudo
--   : FUNCTION S* expression ')'
--   ;
--
-- expression
--   /* In CSS3, the expressions are identifiers, strings, */
--   /* or of the form "an+b" */
--   : [ [ PLUS | '-' | DIMENSION | NUMBER | STRING | IDENT ] S* ]+
--   ;
--
-- negation
--   : NOT S* negation_arg S* ')'
--   ;
--
-- negation_arg
--   : type_selector | universal | HASH | class | attrib | pseudo
--   ;
--
--
-- Lexer:
--
-- %option case-insensitive
--
-- ident     [-]?{nmstart}{nmchar}*
-- name      {nmchar}+
-- nmstart   [_a-z]|{nonascii}|{escape}
-- nonascii  [^\0-\177]
-- unicode   \\[0-9a-f]{1,6}(\r\n|[ \n\r\t\f])?
-- escape    {unicode}|\\[^\n\r\f0-9a-f]
-- nmchar    [_a-z0-9-]|{nonascii}|{escape}
-- num       [0-9]+|[0-9]*\.[0-9]+
-- string    {string1}|{string2}
-- string1   \"([^\n\r\f\\"]|\\{nl}|{nonascii}|{escape})*\"
-- string2   \'([^\n\r\f\\']|\\{nl}|{nonascii}|{escape})*\'
-- invalid   {invalid1}|{invalid2}
-- invalid1  \"([^\n\r\f\\"]|\\{nl}|{nonascii}|{escape})*
-- invalid2  \'([^\n\r\f\\']|\\{nl}|{nonascii}|{escape})*
-- nl        \n|\r\n|\r|\f
-- w         [ \t\r\n\f]*
--
-- D         d|\\0{0,4}(44|64)(\r\n|[ \t\r\n\f])?
-- E         e|\\0{0,4}(45|65)(\r\n|[ \t\r\n\f])?
-- N         n|\\0{0,4}(4e|6e)(\r\n|[ \t\r\n\f])?|\\n
-- O         o|\\0{0,4}(4f|6f)(\r\n|[ \t\r\n\f])?|\\o
-- T         t|\\0{0,4}(54|74)(\r\n|[ \t\r\n\f])?|\\t
-- V         v|\\0{0,4}(58|78)(\r\n|[ \t\r\n\f])?|\\v
--
-- %%
--
-- [ \t\r\n\f]+     return S;
--
-- "~="             return INCLUDES;
-- "|="             return DASHMATCH;
-- "^="             return PREFIXMATCH;
-- "$="             return SUFFIXMATCH;
-- "*="             return SUBSTRINGMATCH;
-- {ident}          return IDENT;
-- {string}         return STRING;
-- {ident}"("       return FUNCTION;
-- {num}            return NUMBER;
-- "#"{name}        return HASH;
-- {w}"+"           return PLUS;
-- {w}">"           return GREATER;
-- {w}","           return COMMA;
-- {w}"~"           return TILDE;
-- ":"{N}{O}{T}"("  return NOT;
-- @{ident}         return ATKEYWORD;
-- {invalid}        return INVALID;
-- {num}%           return PERCENTAGE;
-- {num}{ident}     return DIMENSION;
-- "<!--"           return CDO;
-- "-->"            return CDC;
--
-- \/\*[^*]*\*+([^/*][^*]*\*+)*\/                    /* ignore comments */
--
-- .                return *yytext;

local function on(parser, name, ...)
  local listener = parser.listener
  local callback = listener["on_" .. name]
  if callback then
    callback(listener, ...)
  end
end

local function type_selector(parser)
  local source = parser.source
  local position = source.position
  local namespace_prefix = source:match_namespace_prefix()
  local element_name = source:match_ident()

  if not element_name then
    source:seek(position)
    return false
  end

  on(parser, "type_selector", namespace_prefix, element_name)
  return true
end

local function universal(parser)
  local source = parser.source
  local position = source.position
  local namespace_prefix = source:match_namespace_prefix()
  local asterisk = source:match("%*")

  if not asterisk then
    source:seek(position)
    return false
  end

  on(parser, "universal", namespace_prefix)
  return true
end

local function hash(parser)
  local name = parser.source:match_hash()
  if name then
    on(parser, "hash", name)
    return true
  else
    return false
  end
end

local function class(parser)
  local source = parser.source
  local position = source.position

  if not source:match("%.") then
    return false
  end

  local name = parser.source:match_ident()
  if name then
    on(parser, "class", name)
    return true
  else
    source:seek(position)
    return false
  end
end

local function attribute(parser)
  local source = parser.source
  local position = source.position

  if not source:match("%[") then
    return false
  end

  source:match_whitespaces()

  local position_name = source.position
  local namespace_prefix = source:match_namespace_prefix()

  local name = parser.source:match_ident()
  if not name then
    source:seek(position_name)
    namespace_prefix = nil
    name = source:match_ident()
    if not name then
      source:seek(position)
      return false
    end
  end

  source:match_whitespaces()

  local operator = nil
  if source:match("%^=") then
    operator = "^="
  elseif source:match("%$=") then
    operator = "$="
  elseif source:match("%*=") then
    operator = "*="
  elseif source:match("=") then
    operator = "="
  elseif source:match("~=") then
    operator = "~="
  elseif source:match("|=") then
    operator = "|="
  end

  local value = nil
  if operator then
    source:match_whitespaces()
    value = source:match_ident()
    if not value then
      value = source:match_string()
    end
    if not value then
      source:seek(position)
      return false
    end
    source:match_whitespaces()
  end

  if not source:match("%]") then
    source:seek(position)
    return false
  end

  on(parser, "attribute", namespace_prefix, name, operator, value)
  return true
end

local function expression_component(parser, expression)
  local source = parser.source

  if source:match("%+") then
    table.insert(expression, {"plus"})
    return true
  end

  if source:match("-") then
    table.insert(expression, {"minus"})
    return true
  end

  local dimension = source:match_dimension()
  if dimension then
    table.insert(expression, {"dimension", dimension})
    return true
  end

  local number = source:match_number()
  if number then
    table.insert(expression, {"number", number})
    return true
  end

  local string = source:match_string()
  if string then
    table.insert(expression, {"string", string})
    return true
  end

  local name = source:match_ident()
  if name then
    table.insert(expression, {"name", name})
    return true
  end

  return false
end

local function functional_pseudo(parser)
  local source = parser.source
  local position = source.position

  local function_name = source:match_ident()
  if not function_name then
    return false
  end

  if not source:match("%(") then
    source:seek(position)
    return false
  end

  local expression = {}
  while true do
    source:match_whitespaces()
    if not expression_component(parser, expression) then
      break
    end
  end

  if #expression == 0 then
    source:seek(position)
    return false
  end

  if source:match("%)") then
    on(parser, "functional_pseudo", function_name, expression)
    return true
  else
    source:seek(position)
    return false
  end
end

local function pseudo(parser)
  local source = parser.source
  local position = source.position

  if not source:match(":") then
    return false
  end

  local event_name
  if source:match(":") then
    event_name = "pseudo_element"
  else
    event_name = "pseudo_class"
  end

  if functional_pseudo(parser) then
    return true
  end

  local name = source:match_ident()
  if name then
    on(parser, event_name, name)
    return true
  else
    source:seek(position)
    return false
  end
end

local function negation(parser)
  local source = parser.source
  local position = source.position

  if not source:match(":not%(") then
    return false
  end

  on(parser, "start_negation")
  source:match_whitespaces()
  if type_selector(parser) or
       universal(parser) or
       hash(parser) or
       class(parser) or
       attribute(parser) or
       pseudo(parser) then
    source:match_whitespaces()
    if source:match("%)") then
      on(parser, "end_negation")
      return true
    else
      source:seek(position)
      return false
    end
  else
    source:seek(position)
    return false
  end
end

local function simple_selector_sequence(parser)
  on(parser, "start_simple_selector_sequence")
  local n_required = 1
  if type_selector(parser) or universal(parser) then
    n_required = 0
  end
  local n_occurred = 0
  while hash(parser) or
          class(parser) or
          attribute(parser) or
          negation(parser) or
          pseudo(parser) do
    n_occurred = n_occurred + 1
  end
  local success = (n_occurred >= n_required)
  if success then
    on(parser, "end_simple_selector_sequence")
  end
  return success
end

local function combinator(parser)
  local source = parser.source
  local position = source.position

  local whitespaces = source:match_whitespaces()

  if source:match("%+") then
    source:match_whitespaces()
    on(parser, "combinator", "+")
    return "+"
  elseif source:match(">") then
    source:match_whitespaces()
    on(parser, "combinator", ">")
    return ">"
  elseif source:match("~") then
    source:match_whitespaces()
    on(parser, "combinator", "~")
    return "~"
  elseif whitespaces then
    on(parser, "combinator", " ")
    return " "
  else
    source:seek(position)
    return false
  end
end

local function selector(parser)
  on(parser, "start_selector")
  if not simple_selector_sequence(parser) then
    return false
  end

  while true do
    local combinator_current = combinator(parser)
    if not combinator_current then
      break
    end
    if not simple_selector_sequence(parser) then
      if combinator_current == " " then
        break
      end
      return false
    end
  end
  on(parser, "end_selector")
  return true
end

local function selectors_group(parser)
  local source = parser.source

  source:match_whitespaces()
  on(parser, "start_selectors_group")
  if not selector(parser) then
    error("Failed to parse CSS selectors group: " ..
            "must have at least one selector: " ..
            "<" .. parser.source:inspect() .. ">")
  end
  while true do
    source:match_whitespaces()
    if not source:match(",") then
      break
    end
    source:match_whitespaces()
    if not selector(parser) then
      error("Failed to parse CSS selectors group: " ..
              "must have selector after ',': " ..
              "<" .. parser.source:inspect() .. ">")
    end
  end
  source:match_whitespaces()
  if #source.data ~= source.position - 1 then
    error("Failed to parse CSS selectors group: " ..
            "there is garbage after selectors group: " ..
            "<" .. parser.source:inspect() .. ">")
  end
  on(parser, "end_selectors_group")
end

function methods:parse()
  selectors_group(self)
end

function Parser.new(input, listener)
  local parser = {
    source = Source.new(input),
    listener = listener,
  }
  setmetatable(parser, metatable)
  return parser
end

return Parser
