---
title: xmlua.XML
---

# `xmlua.XML` class

## Summary

It's a class for parsing a XML.

The parsed document is returned as [`xmlua.Document`][document] object.

Example:

```lua
local xmlua = require("xmlua")

local document = xmlua.XML.parse("<root><sub/></root>")

-- Call xmlua.Document:root method
document:root() -- -> Root element
```

## Class methods

### `xmlua.XML.parse(xml) -> xmlua.Document` {#parse}

`xml`: XML string to be parsed.

It parses the given XML and returns `xmlua.Document` object.

If XML parsing is failed, it raises an error.

Here is an example to parse XML:

```lua
local xmlua = require("xmlua")

-- XML to be parsed
local xml = [[
<root>
  <sub/>
</root>
]]

-- If you want to parse text in a file,
-- you need to read file content by yourself.

-- local xml = io.open("example.xml"):read("*all")


-- Parses XML
local success, document = pcall(xmlua.XML.parse, xml)
if not success then
  local message = document
  print("Failed to parse XML: " .. message)
  os.exit(1)
end

-- Gets the root element
local root = document:root() -- --> <root> element as xmlua.Element

-- Prints the root element name
print(root:name()) -- -> root
```

### `xmlua.XML.build(document_tree={ELEMENT, {ATTRIBUTE1, ATTRIBUTE2, ...}, ...}) -> xmlua.Document` {#build}

If you give tabel as below, it returns document tree.

```lua
{ -- Support only element and attribute, text.
  "Element name", -- 1st element is element name.
  {        -- 2nd element is attribute. If this element has not attribute, this table is empty.
    ["Attribute name1"] = "Attribute value1",
    ["Attribute name2"] = "Attribute value2",
    ...,
    ["Attribute name n"] = "Attribute value n",
  },
  -- 3rd element is child node
  "Text node1", -- If this element is a string, this element is a text node.
  {                 -- If this element is a table, this element is an element node.
    "Child node name1",
    {
      ["Attribute name1"] = "Attribute value1",
      ["Attribute name2"] = "Attribute value2",
      ...,
      ["Attribute name n"] = "Attribute value n",
    },
  }
  "Text ndoe2",
  ...
}
```

This method makes new `xmlua.Document`.
If you give empty table, it returns empty `xmlua.Document`(This document have not root element).

Example:

```lua
local xmlua = require("xmlua")

local doc_tree = {
  "root",
  {
    ["class"] = "A",
    ["id"] = "1"
  },
  "This is text.",
  {
    "child",
    {
      ["class"] = "B",
      ["id"] = "2"
    }
  }
}
-- Make new document fro table.
local document = xmlua.XML.build(doc_tree)
print(document:to_xml())
-- <?xml version="1.0" encoding="UTF-8"?>
-- <root id="1" class="A">This is text.<child class="B" id="2"/></root>
```

## See also

  * [`xmlua.Document`][document]: The class for HTML document and XML document.

  * [`xmlua.Serializable`][serializable]: Provides HTML and XML serialization related methods.

  * [`xmlua.Searchable`][searchable]: Provides node search related methods.


[document]:document.html

[serializable]:serializable.html

[searchable]:searchable.html
