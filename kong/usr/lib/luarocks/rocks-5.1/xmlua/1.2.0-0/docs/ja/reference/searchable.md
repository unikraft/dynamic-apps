---
title: xmlua.Searchable
---

# `xmlua.Searchable`モジュール

## 概要

[XPath][xpath]を使ってノードを検索する機能を提供します。

## メソッド

### `search(xpath[, namespace]) -> xmlua.NodeSet` {#search}

XPathを使ってノードを検索し[`xmlua.NodeSet`][node-set]オブジェクトを返します。

レシーバーが[`xmlua.Document`][document]の場合はXPathのコンテキストノードはルートノードになります。

レシーバーが[`xmlua.Element`][element]の場合、XPathのコンテキストノードはレシーバーの要素になります。つまり、XPathの「`.`」はレシーバーの要素です。

`xpath`: ノードを検索するためのXPath文字列です。
`namespace`: カスタマイズされた名前空間です。デフォルトの名前空間を使用する場合は、この引数を省略する必要があります。

XPathでの検索に失敗した場合は、エラーが発生します。

例：

```lua
local xmlua = require("xmlua")

local xml = [[
<root>
  <sub1>text1</sub1>
  <sub2>text2</sub2>
  <sub3>text3</sub3>
</root>
]]

local document = xmlua.XML.parse(xml)

-- <root>要素配下の要素をすべて検索します。
local all_subs = document:search("/root/*")

-- "#"を使ってマッチしたノードの数を出力できます。
print(#all_subs) -- -> 3

-- "[]"を使って、N番目のノードにアクセスできます。
print(all_subs[1]:to_xml()) -- -> <sub1>text1</sub1>
print(all_subs[2]:to_xml()) -- -> <sub2>text2</sub2>
print(all_subs[3]:to_xml()) -- -> <sub3>text3</sub3>
```

ルート要素からでも検索できます。

例：

```lua
local xmlua = require("xmlua")

local xml = [[
<root>
  <sub1>text1</sub1>
  <sub2>text2</sub2>
  <sub3>text3</sub3>
</root>
]]

local document = xmlua.XML.parse(xml)

-- ルート要素
local root = document:root()

-- <root>要素配下の要素をすべて検索します。
local all_subs = root:search("*")

-- "#"を使ってマッチしたノードの数を出力できます。
print(#all_subs) -- -> 3

-- "[]"を使って、N番目のノードにアクセスできます。
print(all_subs[1]:to_xml()) -- -> <sub1>text1</sub1>
print(all_subs[2]:to_xml()) -- -> <sub2>text2</sub2>
print(all_subs[3]:to_xml()) -- -> <sub3>text3</sub3>
```

名前空間のあるドキュメントを検索することもできます。
デフォルトの名前空間を使いたい場合は、以下のように明示的に名前空間を指定する必要があります。

例：

```lua
local xmlua = require("xmlua")

local xml = [[
<example:root xmlns:example="http://example.com/">
  <example:sub>text</example:sub>
</example:root>
]]

local document = xmlua.XML.parse(xml)

local example_sub = document:search("/example:root/example:sub")
print(example_sub[1]:to_xml()) -- -> <example:sub>text</example:sub>
```

以下のように、カスタマイズした名前空間を使うこともできます。

例：

```lua
local xmlua = require("xmlua")

local xml = [[
<example:root xmlns:example="http://example.com/">
  <example:sub>text</example:sub>
</example:root>
]]

local namespaces = {
  {
    prefix = "e",
    href = "http://example.com/",
  }
}

local document = xmlua.XML.parse(xml)

local example_sub = document:search("/e:root/e:sub", namespace)
print(example_sub[1]:to_xml()) -- -> <example:sub>text</example:sub>
```

### `xpath_search(xpath) -> xmlua.NodeSet` {#xpath-search}

[`search`][search]の別名です。

### `css_select(css_selectors) -> xmlua.NodeSet` {#css-select}

[CSSセレクター][css-selectors]を使ってノードを検索し[`xmlua.NodeSet`][node-set]オブジェクトを返します。

レシーバーが[`xmlua.Document`][document]の場合はCSSセレクターのコンテキストノードはルートノードになります。

レシーバーが[`xmlua.Element`][element]の場合、CSSセレクターのコンテキストノードはレシーバーの要素になります。つまり、現在の要素がレシーバーの要素になります。

`css_selectors`: ノードを検索するためのCSSセレクター文字列です。

CSSセレクターが不正な場合はエラーが発生します。

例：

```lua
local xmlua = require("xmlua")

local xml = [[
<root>
  <sub1>text1</sub1>
  <sub2>text2</sub2>
  <sub3>text3</sub3>
</root>
]]

local document = xmlua.XML.parse(xml)

-- <root>要素配下の要素をすべて検索します。
local all_subs = document:css_select("root *")

-- "#"を使ってマッチしたノードの数を出力できます。
print(#all_subs) -- -> 3

-- "[]"を使って、N番目のノードにアクセスできます。
print(all_subs[1]:to_xml()) -- -> <sub1>text1</sub1>
print(all_subs[2]:to_xml()) -- -> <sub2>text2</sub2>
print(all_subs[3]:to_xml()) -- -> <sub3>text3</sub3>
```

ルート要素からでも検索できます。

例：

```lua
local xmlua = require("xmlua")

local xml = [[
<root>
  <sub1>text1</sub1>
  <sub2>text2</sub2>
  <sub3>text3</sub3>
</root>
]]

local document = xmlua.XML.parse(xml)

-- ルート要素
local root = document:root()

-- <root>要素配下の要素をすべて検索します。
local all_subs = root:css_select("*")

-- "#"を使ってマッチしたノードの数を出力できます。
print(#all_subs) -- -> 3

-- "[]"を使って、N番目のノードにアクセスできます。
print(all_subs[1]:to_xml()) -- -> <sub1>text1</sub1>
print(all_subs[2]:to_xml()) -- -> <sub2>text2</sub2>
print(all_subs[3]:to_xml()) -- -> <sub3>text3</sub3>
```

## 参照

  * [XPath][xpath]: XPathの仕様です。

  * [`xmlua.Document`][document]: HTMLドキュメントとXMLドキュメント用のクラスです。

  * [`xmlua.Element`][element]: 要素ノード用のクラスです。

  * [`xmlua.NodeSet`][node-set]: 複数ノードを扱うためのクラスです。


[xpath]:https://www.w3.org/TR/xpath/

[search]:#search

[css-selectors]:https://www.w3.org/TR/selectors-3/

[document]:document.html

[element]:element.html

[node-set]:node-set.html
