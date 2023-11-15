---
title: xmlua.DocumentFragment
---

# `xmlua.DocumentFragment` クラス

## 概要

ドキュメントフラグメントノード用のクラスです。

通常、[`xmlua.Document:create_document_fragment`][create-document-fragment]を使用して取得します。

例：

```lua
local xmlua = require("xmlua")

local document = xmlua.XML.build({"root"})
local document_fragment_node = -- -> xmlua.DocumentFragment
  document:create_document_fragment()
```

このクラスのオブジェクトは以下のモジュールのメソッドを使えます。

  * [`xmlua.Node`][node]: それぞれのノードに共通のメソッドを提供します。

  * [`xmlua.Element`][element]: 要素ノード用のクラスです。

つまり、このクラスのオブジェクトで上述のモジュールのメソッドを使えます。

## インスタンスメソッド

このクラス特有のメソッドはありません。

## 参照

  * [`xmlua.Document`][document]: HTMLドキュメントとXMLドキュメント用のクラスです。

  * [`xmlua.Node`][node]: それぞれのノードに共通のメソッドを提供します。

  * [`xmlua.Element`][element]: 要素ノード用のクラスです。


[create-document-fragment]:document.html#document-fragment.html

[document]:document.html

[node]:node.html

[element]:element.html
