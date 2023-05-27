---
title: luacs
---

# `luacs`モジュール

## 概要

メインモジュールです。

## モジュール関数

### `to_xpaths(css_selectors_group) -> {xpath1, xpath2, ...}` {#to-xpaths}

CSSセレクターを1つ以上のXPathに変換します。

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
