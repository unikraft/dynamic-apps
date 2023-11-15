---
title: xmlua.Document
---

# `xmlua.Document` class

## Summary

It's a class for a document. Document is HTML document or XML document.

It has methods of the following modules:

  * [`xmlua.Serializable`][serializable]: Provides HTML and XML serialization related methods.

  * [`xmlua.Searchable`][searchable]: Provides node search related methods.

It means that you can use methods in the modules.

## Properties

### `errors -> {ERROR1, ERROR2, ...}` {#errors}

It contains errors occurred while parsing document.

Each error has the following structure:

```lua
{
  domain = ERROR_DOMAIN_AS_NUMBER,
  code = ERROR_CODE_AS_NUMBER,
  message = "ERROR_MESSAGE",
  level = ERROR_LEVEL_AS_NUMBER,
  file = nil,
  line = ERROR_LINE_AS_NUMBER,
}
```

`domain` and `code` use internal libxml2's error domain (`xmlErrorDomain`) and error code (`xmlParserError`) directly for now. So you can't use them.

`message` is the error message. It's the most important information.

`level` also uses internal libxml2's error level (`xmlErrorLevel`) but there are few levels. So you can use it. Here are all error levels:

  * `1` (`XML_ERR_WARNING`): A warning.

  * `2` (`XML_ERR_ERROR`): A recoverable error.

  * `3` (`XML_ERR_FATAL`): A fatal error.

`file` is always `nil` for now. Because XMLua only supports parsing HTML and XML in memory.

`line` is the nth line where the error is occurred.

## Methods

### `root() -> xmlua.Element` {#root}

It returns the root element.

Example:

```lua
require xmlua = require("xmlua")

local xml = xmlua.XML.parse("<root><sub/></root>")
xml:root() -- -> "<root>" element as xmlua.Element object
```

### `parent() -> nil` {#parent}

It always returns `nil`. It's just for consistency with [`xmlua.Element:parent`][element-parent].

Example:

```lua
require xmlua = require("xmlua")

local document = xmlua.XML.parse("<root><sub/></root>")
document:parent() -- -> nil
```

### `add_entity(entity) -> {name, original, content, entity_type, external_id, system_id, uri, owner, checked}` {#add_entity}

It returns the entity added to a document.
Argument of `add_entity` is Lua's table as below.
You can specify the name and the entity_type, the external_id, the system_id, content of an entity you want to add.

```lua
local entity_info = {
  name = "Sample",
  entity_type = "INTERNAL_ENTITY",
  external_id = "-//W3C//DTD XHTML 1.0 Transitional//EN",
  system_id = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd",
  content = "This is test."
}
```

You can register an entity before XML parsing as the below example.
Thereby you can replace the existing reference entity.

Example:

```lua
local xmlua = require("xmlua")

-- XML to be parsed
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE root [
]>
<root>
  &Sample;
<root/>
]]

-- If you want to parse text in a file,
-- you need to read file content by yourself.

-- local html = io.open("example.html"):read("*all")

local parser = xmlua.XMLSAXParser.new()
local is_root = true
parser.start_element = function()
  if not is_root then
    return
  end

  local document = parser.document
  -- Setting information for add a entity
  local entity = {
    name = "Sample",
    -- Entity type list
    --   INTERNAL_ENTITY
    --   EXTERNAL_PARSED_ENTITY
    --   EXTERNAL_UNPARSED_ENTITY
    --   INTERNAL_PARAMETER_ENTITY
    --   EXTERNAL_PARAMETER_ENTITY
    --   INTERNAL_PREDEFINED_ENTITY
    entity_type = "INTERNAL_ENTITY",
    content = "This is test."
  }
  document:add_entity(entity)
  is_root = false
end
parser.text = function(text)
  print(text) -- This is test.
end

parser:parse(xml)
parser:finish()
```

Result of avobe example as blow.

```
This is test.
```

### `add_dtd_entity(entity) -> {name, original, content, entity_type, external_id, system_id, uri, owner, checked}` {#add_dtd_entity}

It returns the entity added to a external subset of document.
Argument of `add_dtd_entity` is Lua's table as below.
You can specify the name and the entity_type, the external_id, the system_id, content of an entity you want to add.

```lua
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE root SYSTEM "./sample/sample.dtd">
<root>
  &Sample;
</root>
]]
```

You can register an entity before XML parsing as the below example.
Thereby you can replace the existing reference entity, add reference.
Also, you need to setting option of `XMLSAXParser` as below, to you register an entity to external subset.

```lua
local options = {load_dtd = true}
local parser = xmlua.XMLSAXParser.new(options)
```

Example:

```lua
local xmlua = require("xmlua")

-- XML to be parsed
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE root [
]>
<root>
  &Sample;
<root/>
]]

-- If you want to parse text in a file,
-- you need to read file content by yourself.

-- local html = io.open("example.html"):read("*all")

local options = {load_dtd = true}
local parser = xmlua.XMLSAXParser.new(options)
local is_root = true
parser.start_element = function()
  if not is_root then
    return
  end

  local document = parser.document
  -- Setting information for add entity
  local entity = {
    name = "Sample",
    -- Entity type list
    --   INTERNAL_ENTITY
    --   EXTERNAL_PARSED_ENTITY
    --   EXTERNAL_UNPARSED_ENTITY
    --   INTERNAL_PARAMETER_ENTITY
    --   EXTERNAL_PARAMETER_ENTITY
    --   INTERNAL_PREDEFINED_ENTITY
    entity_type = "INTERNAL_ENTITY",
    content = "This is test."
  }
  document:add_dtd_entity(entity)
  is_root = false
end
parser.text = function(text)
  print(text) -- This is test.
end
parser:parse(xml)
parser:finish()
```

Result of avobe example as blow.

```
This is test.
```

### `create_cdata_section(content) -> [xmlua.CDATADection]` {#create_cdata_section}

You can create new cdata section node.
the argument is content of cdata section node.

Example:

```lua
local xmlua = require("xmlua")

local document = xmlua.XML.build({"root"})
local cdata_section_node =
  document:create_cdata_section("This is <CDATA>")
root = document:root()
root:add_child(cdata_section_node)
print(document:to_xml())
--<?xml version="1.0" encoding="UTF-8"?>
--<root><![CDATA[This is <CDATA>]]></root>
end
```

### `create_comment(content) -> [xmlua.Comment]` {#create_comment}

You can create new comment node.
the argument is content of comment node.

Example:

```lua
local xmlua = require("xmlua")

local document = xmlua.XML.build({"root"})
local comment_node =
  document:create_comment("This is comment")
root = document:root()
root:add_child(comment_node)
print(document:to_xml())
--<?xml version="1.0" encoding="UTF-8"?>
--<root>
--  <!--This is comment-->
--</root>
end
```

### `create_document_fragment() -> [xmlua.DocumentFragment]` {#create_document_fragment}

You can create new document fragment node.

Example:

```lua
local xmlua = require("xmlua")

local document = xmlua.XML.build({"root"})
local document_fragment = document:create_document_fragment()
local comment_node =
  document:create_comment("This is comment")
document_fragment:add_child(comment_node)

root = document:root()
root:add_child(comment_node)
print(document:to_xml())
--<?xml version="1.0" encoding="UTF-8"?>
--<root>
--  <!--This is comment-->
--
--</root>
end
```

### `create_document_type(name, public_id, system_id) -> [xmlua.DocumentType]` {#create_document_type}

You can create new document type node.
You can specify a location of the external subset by SystemID or PublicID.
If you want to specify a location of the exterrnal subset by PublicID, you set `public_id` and `system_id`.
If you want to specify a location of the external subset by SystemID, you set `system_id`(`public_id` is `nil`).

Example:

```lua
local xmlua = require("xmlua")

--Specify a location by PublicID
local document = xmlua.XML.build({})
local document_type =
  document:create_document_type("TestDocumentDecl",
                                "-//Test/Sample/EN",
                                "//test.dtd")
print(document:to_xml()
--<?xml version="1.0" encoding="UTF-8"?>
--<!DOCTYPE TestDocumentDecl PUBLIC "-//Test/Sample/EN" "//system.dtd">
```

```lua
local xmlua = require("xmlua")

--Specify a location by SystemID
local document = xmlua.XML.build({})
local document_type =
  document:create_document_type("TestDocumentDecl",
                                nil,
                                "//test.dtd")
print(document:to_xml()
--<?xml version="1.0" encoding="UTF-8"?>
--<!DOCTYPE TestDocumentDecl SYSTEM "//system.dtd">
```

### `create_namespace(href, prefix) -> [xmlua.Namespace]` {#create_namespace}

You can create new namespace node.
This method can't create a namespace with a similar prefix than an existing one present on this node.
If you want to create default namespace, you set `nil` to `prefix`.

Example:

```lua
local xmlua = require("xmlua")
--create new namespace
local document = xmlua.XML.build({"root"})
local namespace =
  document:create_namespace("http://www.w3.org/1999/xhtml",
                            "xhtml")
local root = document:root()
root:set_namespace(namespace)
print(document:to_xml())
--<?xml version="1.0" encoding="UTF-8"?>
--<xhtml:root/>
```

```lua
local xmlua = require("xmlua")
--create default namespace
local document = xmlua.XML.build({"root"})
local namespace =
  document:create_namespace("http://www.w3.org/1999/xhtml",
                            nil)
local root = document:root()
root:set_namespace(namespace)
print(document:to_xml())
--<?xml version="1.0" encoding="UTF-8"?>
--<root/>
```

### `create_processing_instruction(name, content) -> [xmlua.ProcessingInstruction]` {#create_processing_instruction}

You can create new processing instruction node.
You can spesify processing instruction as `name` and argument of processing instruction as `content`.

Example:

```lua
local xmlua = require("xmlua")

local document = xmlua.XML.build({"root"})
local processing_instruction =
  document:create_processing_instruction("xml-stylesheet",
                                         "href=\"www.test.com/test-style.xsl\" type=\"text/xsl\"")
local root = document:root()
root:add_child(processing_instruction)
print(document:to_xml())
<?xml version="1.0" encoding="UTF-8"?>
--<root>
--  <?xml-stylesheet href="www.test.com/test-style.xsl" type="text/xsl"?>
--</root>
```

## See also

  * [`xmlua.HTML`][html]: The class for parsing HTML.

  * [`xmlua.XML`][xml]: The class for parsing XML.

  * [`xmlua.Element`][element]: The class for element node.

  * [`xmlua.Serializable`][serializable]: Provides HTML and XML serialization related methods.

  * [`xmlua.Searchable`][searchable]: Provides node search related methods.


[element-parent]:element.html#parent

[html]:html.html

[xml]:xml.html

[element]:element.html

[serializable]:serializable.html

[searchable]:searchable.html
