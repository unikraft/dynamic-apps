---
title: チュートリアル
---

# チュートリアル

このドキュメントはLuaCSの使い方を段階的に説明します。まだLuaCSをインストールしていない場合は、このドキュメントを読む前にLuaCSを[install][install]してください。

## CSSセレクターのパース {#parse-css-selectors}

TODO

## XPathへ変換 {#convert-to-xpath}

CSSセレクターを[XPath][xpath]に変換できます。

例：

```lua
local luacs = require("luacs")

-- CSSセレクターをXPathに変換
local xpaths = luacs.to_xpaths("ul li, a.external")

for _, xpath in ipairs(xpaths) do
  print(xpath)
  -- /descendant::*[local-name()='ul']/descendant::*[local-name()='li']
  -- /descendant::*[local-name()='a'][@class][contains(concat(' ', normalize-space(@class), ' '), ' external ')]
end
```

CSSセレクターでDOMからノードを検索するには[`xmlua.Searchable.css_select`][xmlua-searchable-css-select]が便利です。

## 次のステップ {#next-step}

これでLuaCSのすべての主な機能を学びました！それぞれの機能をより理解したい場合は、各機能の[リファレンスマニュアル][reference]を見てください。


[install]:../install/

[xpath]:https://www.w3.org/TR/xpath/

[xmlua-searchable-css-select]:https://clear-code.github.io/xmlua/ja/reference/searchable.html#css-select

[reference]:../reference/
