---
title: xmlua.XMLSAXParser
---

# `xmlua.XMLSAXParser` クラス

## 概要

このクラスは、SAX(Simple API for XML)を使ってXMLをパースするクラスです。

SAXは、DOMと異なりドキュメントを一行ずつパースし、DOMはすべてのドキュメントをメモリに読み込んだあとにパースを行います。そのため、SAXはDOMと比べて少ないメモリで高速に動作します。

このクラスを使って、以下のイベントが起こった際に呼ばれるコールバックメソッドを登録できます。

コールバックイベント一覧：

  * [`start_document`][xml-sax-parser-start-document]

  * [`end_document`][xml-sax-parser-end-document]

  * [`element_declaration`][xml-sax-parser-element-declaration]

  * [`attribute_declaration`][xml-sax-parser-attribute-declaration]

  * [`notation_declaration`][xml-sax-parser-notation-declaration]

  * [`unparsed_entity_declaration`][xml-sax-parser-unparsed-entity-declaration]

  * [`entity_declaration`][xml-sax-parser-entity-declaration]

  * [`internal_subset`][xml-sax-parser-internal-subset]

  * [`external_subset`][xml-sax-parser-external-subset]

  * [`reference`][xml-sax-parser-reference]

  * [`processing_instruction`][xml-sax-parser-processing-instruction]

  * [`cdata_block`][xml-sax-parser-cdata-block]

  * [`ignorable_whitespace`][xml-sax-parser-ignorable-whitespace]

  * [`comment`][xml-sax-parser-comment]

  * [`start_element`][xml-sax-parser-start-element]

  * [`end_element`][xml-sax-parser-end-element]

  * [`text`][xml-sax-parser-text]

  * [`warning`][xml-sax-parser-warning]

  * [`error`][xml-sax-parser-error]

## クラスメソッド

### `xmlua.XMLSAXParser.new() -> XMLSAXParser` {#new}

XMLSAXParser オブジェクトを作成します。

以下の例のように、`xmlua.XMLSAXParser`クラスのオブジェクトを作成できます。

例：

```lua
local xmlua = require("xmlua")

local parser = xmlua.XMLSAXParser.new()
```

## インスタンスメソッド

### `parse(xml) -> boolean` {#parse}

`xml`: パース対象のXML文字列

与えられたXMLをパースします。XMLのパースが成功した場合は、このメソッドはtrueを返します。XMLのパースに失敗した場合は、falseを返します。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<root>Hello </root>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end
```

### `finish() -> boolean` {#finish}

SAXを使ったXMLのパースを終了します。

[`parse`][parse]を使ってパースを開始した場合は、パース完了後にこのメソッドを呼ぶ必要があります。

このメソッドを呼ばないと、[`end_document`][xml-sax-parser-end-document]イベントは発生しません。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<root>Hello </root>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end


parser:finish()
```

## プロパティ

### `start_document` {#start-document}

以下のようにコールバック関数を登録できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.start_document = function()
  -- 実行したいコード
end
```

document要素のパースを開始したときに、登録した関数が呼び出されます。

以下の例だと、`<root>`をパースしたときに、登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- XML to be parsed
local xml = [[
<xml>Hello</xml>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.start_document = function()
  print("Start document")
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Start document
```

### `end_document` {#end-document}

以下のようにコールバック関数を登録できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.end_document = function()
  -- 実行したいコード
end
```

`xmlua.XMLSAXParser.finish` を呼び出した時に、登録した関数が呼び出されます。

以下の例では、`parser:finish()`を実行したときに登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- XML to be parsed
local xml = [[
<xml>Hello</xml>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.end_document = function()
  print("End document")
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
End document
```

### `element_declaration` {#element-declaration}

以下のようにコールバック関数を登録できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.element_declaration = function(name, type, content)
  -- 実行したいコード
end
```

DTD内のelement宣言をパースしたときに、登録した関数が呼び出されます。

以下の例では、`<!ELEMENT test (A,B*,C+)>`をパースした際に登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE example [
  <!ELEMENT test (A,B*,C+)>
]>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.element_declaration = function(name,
                                      element_type,
                                      content)
  print("Element name: " .. name)
  print("Element type: " .. element_type)
  if element_type == "EMPTY" then
    return
  end
  print("Content:")
  print_element_content(content, "  ")
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Element name: test
Element type: ELEMENT
Content:
  type: SEQUENCE
  occur: ONCE
  child[1]:
    type: ELEMENT
    occur: ONCE
    prefix: 
    name: A
  child[2]:
    type: ELEMENT
    occur: MULTIPLE
    prefix: 
    name: B
  child[3]:
    type: ELEMENT
    occur: PLUS
    prefix: 
    name: C
```

### `attribute_declaration` {#attribute-declaration}

以下のようにコールバック関数を登録できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.attribute_declaration = function(name,
                                        attribute_name,
                                        attribute_type,
                                        default_value_type,
                                        default_value,
                                        enumerated_values)
  -- 実行したいコード
end
```

DTD内のattribute宣言をパースしたときに、登録した関数が呼び出されます。

以下の例では、`<!ATTLIST A B (yes|no) "no">`をパースした際に登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE example [
  <!ATTLIST A B (yes|no) "no">
]>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.attribute_declaration = function(name,
                                        attribute_name,
                                        attribute_type,
                                        default_value_type,
                                        default_value,
                                        enumerated_values)
  print("Element name: " .. name)
  print("Attribute name: " .. attribute_name)
  print("Attribute type: " .. attribute_type)
  if default_value then
    print("Default value type: " .. default_value_type)
    print("Default value: " .. default_value)
  end
  for _, v in pairs(enumerated_values) do
    print("Enumrated value: " .. v)
  end
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Attribute name: B
Attribute type: 9
Default value type: 1
Default value: no
Enumrated value: yes
Enumrated value: no
```

### `notation_declaration` {#notation-declaration}

以下のようにコールバック関数を登録できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.notation_declaration = function(name,
                                       public_id,
                                       system_id)
  -- 実行したいコード
end
```

DTD内のnotation宣言をパースしたときに、登録した関数が呼び出されます。

以下の例では、`<!NOTATION test SYSTEM "Test">`をパースした際に登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE example [
  <!NOTATION test SYSTEM "Test">
]>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.notation_declaration = function(name,
                                       public_id,
                                       system_id)
  print("Notation name: " .. name)
  if public_id ~= nil then
    print("Notation public id: " .. public_id)
  end
  if system_id ~= nil then
    print("Notation system id: " .. system_id)
  end
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Notation name: test
Notation system id: Test
```

### `unparsed_entity_declaration` {#unparsed-entity-declaration}

以下のようにコールバック関数を登録できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.unparsed_entity_declaration = function(name,
                                              public_id,
                                              system_id,
                                              notation_name)
  -- 実行したいコード
end
```

DTD内の未解析の外部エンティティをパースしたときに、登録した関数が呼び出されます。

以下の例では、`<!ENTITY test SYSTEM "file:///usr/local/share/test.gif" NDATA gif>`をパースした際に登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE example [
  <!ENTITY test SYSTEM "file:///usr/local/share/test.gif" NDATA gif>
]>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.unparsed_entity_declaration = function(name,
                                              public_id,
                                              system_id,
                                              notation_name)
  print("Unparserd entity name: " .. name)
  if public_id ~= nil then
    print("Unparserd entity public id: " .. public_id)
  end
  if system_id ~= nil then
    print("Unparserd entity system id: " .. system_id)
  end
  print("Unparserd entity notation_name: " .. notation_name)
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Unparserd entity name: test
Unparserd entity system id: file:///usr/local/share/test.gif
Unparserd entity notation_name: gif
```

### `entity_declaration` {#entity-declaration}

以下のようにコールバック関数を登録できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.entity_declaration = function(name,
                                     entity_type,
                                     public_id,
                                     system_id,
                                     content)
  -- 実行したいコード
end
```

DTD内のentity宣言をパースしたときに、登録した関数が呼び出されます。

以下の例では、`<!ENTITY test "This is test.">`をパースした際に登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE example [
  <!ENTITY test "This is test.">
]>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.entity_declaration = function(name,
                                     entity_type,
                                     public_id,
                                     system_id,
                                     content)
  print("Entity name: " .. name)
  print("Entity type: " .. entity_type)
  if public_id ~= nil then
    print("Entity public id: " .. public_id)
  end
  if system_id ~= nil then
    print("Entity system id: " .. system_id)
  end
  print("Entity content: " .. content)
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Entity name: test
Entity type: 1
Entity content: This is test.
```

### `internal_subset` {#internal-subset}

以下のようにコールバック関数を登録できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.internal_subset = function(name,
                                  external_id,
                                  system_id)
  -- 実行したいコード
end
```

内部サブセットをパースしたときに、登録した関数が呼び出されます。

以下の例では、`<!DOCTYPE example[...]>`をパースした際に登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE example [
  <!ENTITY test "This is test.">
]>
<example/>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.internal_subset = function(name,
                                  external_id,
                                  system_id)
  print("Internal subset name: " .. name)
  if external_id ~= nil then
    print("Internal subset external id: " .. external_id)
  end
  if system_id ~= nil then
    print("Internal subset system id: " .. system_id)
  end
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Internal subset name: example
```

### `external_subset` {#external-subset}

以下のようにコールバック関数を登録できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.external_subset = function(name,
                                  external_id,
                                  system_id)
  -- 実行したいコード
end
```

外部サブセットをパースしたときに、登録した関数が呼び出されます。

以下の例では、`<!DOCTYPE example[...]>`をパースした際に登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- XML to be parsed
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html></html>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.external_subset = function(name,
                                  external_id,
                                  system_id)
  print("External subset name: " .. name)
  if external_id ~= nil then
    print("External subset external id: " .. external_id)
  end
  if system_id ~= nil then
    print("External subset system id: " .. system_id)
  end
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
External subset name: html
External subset external id: -//W3C//DTD XHTML 1.0 Transitional//EN
External subset system id: http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd
```

### `reference` {#reference}

以下のようにコールバック関数を登録できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.reference = function(entity_name)
  -- 実行したいコード
end
```

参照をパースしたときに、登録した関数が呼び出されます。

以下の例だと、`&ref;`をパースしたときに、登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE test [
  <!ENTITY ref "Reference">
]>
<test>&ref;</test>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.reference = function(entity_name)
  print("Reference entity name: " .. entity_name)
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Reference entity name: ref
```

### `processing_instruction` {#processing-instruction}

以下のようにコールバック関数を登録できます。

コールバック関数の引数として、Processing instruction要素の属性を取得することができます。Processing Instruction要素の属性は、以下の例では、`target`と`data_list`です。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.processing_instruction = function(target, data_list)
  -- 実行したいコード
end
```

Processing Instruction要素が解析されたときに、登録したコールバック関数が呼び出されます。

以下の例では、`<?target This is PI>`をパースした際に登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- XML to be parsed
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<?xml-stylesheet href="www.test.com/test-style.xsl" type="text/xsl" ?>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.processing_instruction = function(target, data_list)
  print("Processing instruction target: "..target)
  print("Processing instruction data: "..data_list)
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Processing instruction target: target
Processing instruction data: This is PI
```

### `cdata_block` {#cdata-block}

以下のようにコールバック関数を登録できます。

コールバック関数の引数として、CDATAセクション内の文字列を取得できます。以下の例では、CDATAセクション内の文字列は、`cdata_block`です。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.cdata_block = function(cdata_block)
  -- 実行したいコード
end
```

CDATAセクションをパースしたときに、登録した関数が呼び出されます。

以下の例だと、`<![CDATA[<p>Hello world!</p>]]>`をパースしたときに、登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [=[
<?xml version="1.0" encoding="UTF-8" ?>
<xml>
<![CDATA[<p>Hello world!</p>]]>
</xml>
]=]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.cdata_block = function(cdata_block)
  print("CDATA block: "..cdata_block)
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
CDATA block: <p>Hello world!</p>
```

### `ignorable_whitespace` {#ignorable-whitespace}

以下のようにコールバック関数を登録できます。

コールバック関数の引数として、XML内の無視できる空白を取得することができます。以下の例では、無視できる空白は、`ignorable_whitespace`です。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.ignorable_whitespace = function(ignorable_whitespace)
  -- 実行したいコード
end
```

無視できる空白をパースしたときに、登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<xml>
  <test></test>
</xml>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.ignorable_whitespace = function(ignorable_whitespace)
  print("Ignorable whitespace: ".."\""..ignorable_whitespace.."\"")
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Ignorable whitespace: "
  "
Ignorable whitespace: "
"
```

### `comment` {#comment}

以下のようにコールバック関数を登録できます。

コールバック関数の引数として、XML内のコメントを取得できます。以下の例では、`comment`がXML内のコメントです。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.comment = function(comment)
  -- 実行したいコード
end
```

XMLのコメントをパースしたときに、登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<xml><!--This is comment--></xml>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.comment = function(comment)
  print("Comment: "..comment)
end
local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Comment:  This is comment.
```

### `start_element` {#start-element}

以下のようにコールバック関数を登録できます。

コールバック関数の引数として、要素の名前と属性を取得できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.start_element = function(local_name,
                                prefix,
                                uri,
                                namespaces,
                                attributes)
  -- You want to execute code
end
```

要素をパースしたときに、登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- XML to be parsed
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<xhtml:html xmlns:xhtml="http://www.w3.org/1999/xhtml"
  id="top"
  xhtml:class="top-level">
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- Parses XML with SAX
local parser = xmlua.XMLSAXParser.new()
parser.start_element = function(local_name,
                                prefix,
                                uri,
                                namespaces,
                                attributes)
  print("Start element: " .. local_name)
  if prefix then
    print("  prefix: " .. prefix)
  end
  if uri then
    print("  URI: " .. uri)
  end
  for namespace_prefix, namespace_uri in pairs(namespaces) do
    if namespace_prefix  == "" then
      print("  Default namespace: " .. namespace_uri)
    else
      print("  Namespace: " .. namespace_prefix .. ": " .. namespace_uri)
    end
  end
  if attributes then
    if #attributes > 0 then
      print("  Attributes:")
      for i, attribute in pairs(attributes) do
        local name
        if attribute.prefix then
          name = attribute.prefix .. ":" .. attribute.local_name
        else
          name = attribute.local_name
        end
        if attribute.uri then
          name = name .. "{" .. attribute.uri .. "}"
        end
        print("    " .. name .. ": " .. attribute.value)
      end
    end
  end
end

local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Start element: html
  prefix: xhtml
  URI: http://www.w3.org/1999/xhtml
  Namespace: xhtml: http://www.w3.org/1999/xhtml
  Attributes:
    id: top
    xhtml:class{http://www.w3.org/1999/xhtml}: top-level
```

### `end_element` {#end-element}

以下のようにコールバック関数を登録できます。

コールバック関数の引数として、要素の名前を取得できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.end_element = function(local_name,
                              prefix,
                              uri)
  -- You want to execute code
end
```

要素の終わりをパースしたときに、登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- XML to be parsed
local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<xhtml:html xmlns:xhtml="http://www.w3.org/1999/xhtml">
</xhtml:html>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- Parses XML with SAX
local parser = xmlua.XMLSAXParser.new()
parser.end_element = function(name)
  print("End element: " .. local_name)
  if prefix then
    print("  prefix: " .. prefix)
  end
  if uri then
    print("  URI: " .. uri)
  end
end

local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
End element: html
  prefix: xhtml
  URI: http://www.w3.org/1999/xhtml
```

### `text` {#text}

以下のようにコールバック関数を登録できます。

コールバック関数の引数として、`text`要素の値を取得できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.text = function(text)
  -- 実行したいコード
end
```

`text`要素をパースしたときに、登録した関数が呼び出されます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
local xml = [[
<?xml version="1.0" encoding="UTF-8"?>
<book>
  <title>Hello World</title>
</book>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- Parses XML with SAX
local parser = xmlua.XMLSAXParser.new()
parser.text = function(text)
  print("Text: " .. text)
end

local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Text:   
Text: Hello World
```

### `warning` {#warning}

以下のようにコールバック関数を登録できます。

コールバック関数の引数として、警告メッセージを取得できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.warning = function(message)
  -- 実行したいコード
end
```

登録した関数は、xmlの解析中に警告が発生した時に呼ばれます。

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
  local xml = [[
<?xml version="1.0"?>
<?xmlo ?>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.warning = function(message)
  print("Warning message: " .. message)
end

local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
"xmlParsePITarget: invalid name prefix 'xml'\n"
```

いくつかの警告は、`xmlParserCtxt.pedantic`が有効なときのみ出力されます。これらの警告を出力するためには、`is_pedantic`を以下のように使用します。

```lua
parser.is_pedantic = true
```

例：

```lua
local xmlua = require("xmlua")

-- パースするXML
  local xml = [[
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE root SYSTEM "file:///usr/local/share/test.dtd" [
<!ENTITY test "This is test.">
<!ENTITY test "This is test.">
]>
<root>
       <data>&test;</data>
</root>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- SAXを使ってXMLをパースする。
local parser = xmlua.XMLSAXParser.new()
parser.is_pedantic = true
parser.warning = function(message)
  print("Warning message: " .. message)
  print("Pedantic :", parser.is_pedantic)
end

local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Warning message: Entity(test) already defined in the internal subset
Pedantic :	true
```

### `error` {#error}

以下のようにコールバック関数を登録できます。

コールバック関数の引数として、エラー情報を取得できます。

```lua
local parser = xmlua.XMLSAXParser.new()
parser.error = function(error)
  -- 実行したいコード
end
```

パースが失敗したときに、登録した関数が呼び出されます。エラー情報の構造は以下の通りです。

```
{
  domain
  code
  message
  level
  line
}
```

`domain`の値は、[`Error domain 一覧`][error-domain-list]に定義されています。

`code`の値は、[`Error code 一覧`][error-code-list]に定義されています。

`level`の値は、[`Error level 一覧`][error-level-list]に定義されています。

例：

```lua
local xmlua = require("xmlua")

-- XML to be parsed
local xml = [[
<>
]]

-- ファイル内のテキストをパースしたい場合は
-- 自分でファイルの内容を読み込む必要があります。

-- local xml = io.open("example.xml"):read("*all")

-- Parses XML with SAX
local parser = xmlua.XMLSAXParser.new()
parser.error = function(error)
  print("Error domain : " .. error.domain)
  print("Error code   : " .. error.code)
  print("Error message: " .. error.message)
  print("Error level  : " .. error.level)
  print("Error line   : " .. error.line)
end

local success = parser:parse(xml)
if not success then
  print("Failed to parse XML with SAX")
  os.exit(1)
end

parser:finish()
```

上記の例の結果は以下のようになります。

```
Error domain :	1
Error code :	5
Error message :Extra content at the end of the document

Error level :	3
Error line :	1
Failed to parse XML with SAX
```

[xml-sax-parser-start-document]:#start-document
[xml-sax-parser-end-document]:#end-document
[xml-sax-parser-element-declaration]:#element-declaration
[xml-sax-parser-attribute-declaration]:#attribute-declaration
[xml-sax-parser-notation-declaration]:#notation-declaration
[xml-sax-parser-unparsed-entity-declaration]:#unparsed-entity-declaration
[xml-sax-parser-entity-declaration]:#entity-declaration
[xml-sax-parser-internal-subset]:#internal-subset
[xml-sax-parser-external-subset]:#external-subset
[xml-sax-parser-reference]:#reference
[xml-sax-parser-processing-instruction]:#processing-instruction
[xml-sax-parser-cdata-block]:#cdata-block
[xml-sax-parser-ignorable-whitespace]:#ignorable-whitespace
[xml-sax-parser-comment]:#comment
[xml-sax-parser-start-element]:#start-element
[xml-sax-parser-end-element]:#end-element
[xml-sax-parser-text]:#text
[xml-sax-parser-warning]:#warning
[xml-sax-parser-error]:#error

[parse]:#parse

[error-domain-list]:error-domain-list.html
[error-code-list]:error-code-list.html
[error-level-list]:error-level-list.html

