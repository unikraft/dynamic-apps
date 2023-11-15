local converter = {}

local ffi = require("ffi")

function converter.to_string(c_string, length)
  if c_string == ffi.NULL then
    return nil
  else
    return ffi.string(c_string, length)
  end
end

function converter.convert_xml_error(raw_xml_error)
  return {
    domain = raw_xml_error.domain,
    code = raw_xml_error.code,
    message = converter.to_string(raw_xml_error.message),
    level  = tonumber(raw_xml_error.level),
    file = converter.to_string(raw_xml_error.file),
    line = raw_xml_error.line,
  }
end

local ENTITY_TYPE_NAMES = {
  INTERNAL_ENTITY            = ffi.C.XML_INTERNAL_GENERAL_ENTITY,
  EXTERNAL_PARSED_ENTITY     = ffi.C.XML_EXTERNAL_GENERAL_PARSED_ENTITY,
  EXTERNAL_UNPARSED_ENTITY   = ffi.C.XML_EXTERNAL_GENERAL_UNPARSED_ENTITY,
  INTERNAL_PARAMETER_ENTITY  = ffi.C.XML_INTERNAL_PARAMETER_ENTITY,
  EXTERNAL_PARAMETER_ENTITY  = ffi.C.XML_EXTERNAL_PARAMETER_ENTITY,
  INTERNAL_PREDEFINED_ENTITY = ffi.C.XML_INTERNAL_PREDEFINED_ENTITY,
}

local ENTITY_TYPE_NUMBERS = {}
for name, number in pairs(ENTITY_TYPE_NAMES) do
  ENTITY_TYPE_NUMBERS[number] = name
end

function converter.convert_entity_type_name(name)
  return ENTITY_TYPE_NAMES[name]
end

function converter.convert_xml_entity(raw_xml_entity)
  return {
    name = converter.to_string(raw_xml_entity.name),
    original = converter.to_string(raw_xml_entity.orig),
    content = converter.to_string(raw_xml_entity.content),
    entity_type = ENTITY_TYPE_NUMBERS[tonumber(raw_xml_entity.etype)],
    external_id = converter.to_string(raw_xml_entity.ExternalID),
    system_id = converter.to_string(raw_xml_entity.SystemID),
    uri = converter.to_string(raw_xml_entity.URI),
    owner = tonumber(raw_xml_entity.owner),
    checked = tonumber(raw_xml_entity.checked),
  }
end

local ELEMENT_CONTENT_TYPES = {
  [ffi.C.XML_ELEMENT_CONTENT_PCDATA]  = "PCDATA",
  [ffi.C.XML_ELEMENT_CONTENT_ELEMENT] = "ELEMENT",
  [ffi.C.XML_ELEMENT_CONTENT_SEQ]     = "SEQUENCE",
  [ffi.C.XML_ELEMENT_CONTENT_OR]      = "OR",
}

local function convert_element_content_type(raw_type)
  return ELEMENT_CONTENT_TYPES[tonumber(raw_type)]
end

local ELEMENT_CONTENT_OCCURS = {
  [ffi.C.XML_ELEMENT_CONTENT_ONCE] = "ONCE",
  [ffi.C.XML_ELEMENT_CONTENT_OPT]  = "OPTIONAL",
  [ffi.C.XML_ELEMENT_CONTENT_MULT] = "MULTIPLE",
  [ffi.C.XML_ELEMENT_CONTENT_PLUS] = "PLUS",
}

local function convert_element_content_occur(raw_occur)
  return ELEMENT_CONTENT_OCCURS[tonumber(raw_occur)]
end

local function convert_element_content_pcdata(raw_content)
  return {
    type = convert_element_content_type(raw_content.type),
    occur = convert_element_content_occur(raw_content.ocur),
  }
end

local function convert_element_content_element(raw_content)
  return {
    type = convert_element_content_type(raw_content.type),
    occur = convert_element_content_occur(raw_content.ocur),
    name = converter.to_string(raw_content.name),
    prefix = converter.to_string(raw_content.prefix),
  }
end

local function convert_element_content_container(raw_content, raw_type)
  local children = {}
  table.insert(children, converter.convert_element_content(raw_content.c1))

  local raw_child = raw_content.c2
  while raw_child.type == raw_type and
        raw_child.ocur == ffi.C.XML_ELEMENT_CONTENT_ONCE do
    table.insert(children, converter.convert_element_content(raw_child.c1))
    raw_child = raw_child.c2
  end
  if raw_child ~= ffi.NULL then
    table.insert(children, converter.convert_element_content(raw_child))
  end
  return {
    type = convert_element_content_type(raw_content.type),
    occur = convert_element_content_occur(raw_content.ocur),
    children = children,
  }
end

local function convert_element_content_seq(raw_content)
  return convert_element_content_container(raw_content,
                                           ffi.C.XML_ELEMENT_CONTENT_SEQ)
end

local function convert_element_content_or(raw_content)
  return convert_element_content_container(raw_content,
                                           ffi.C.XML_ELEMENT_CONTENT_OR)
end

function converter.convert_element_content(raw_content)
  if raw_content == ffi.NULL then
    return nil
  end

  if raw_content.type == ffi.C.XML_ELEMENT_CONTENT_PCDATA then
    return convert_element_content_pcdata(raw_content)
  elseif raw_content.type == ffi.C.XML_ELEMENT_CONTENT_ELEMENT then
    return convert_element_content_element(raw_content)
  elseif raw_content.type == ffi.C.XML_ELEMENT_CONTENT_SEQ then
    return convert_element_content_seq(raw_content)
  elseif raw_content.type == ffi.C.XML_ELEMENT_CONTENT_OR then
    return convert_element_content_or(raw_content)
  end
end

return converter
