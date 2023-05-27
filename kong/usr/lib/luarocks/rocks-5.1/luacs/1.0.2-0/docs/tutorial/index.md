---
title: Tutorial
---

# Tutorial

This document describes how to use LuaCS step by step. If you don't install LuaCS yet, [install][install] LuaCS before you read this document.

## Parse CSS Selectors {#parse-css-selectors}

TODO

## Convert to XPath {#convert-to-xpath}

You can convert CSS Selectors to [XPath][xpath].

Example:

```lua
local luacs = require("luacs")

-- Convert CSS Selectors to XPaths
local xpaths = luacs.to_xpaths("ul li, a.external")

for _, xpath in ipairs(xpaths) do
  print(xpath)
  -- /descendant::*[local-name()='ul']/descendant::*[local-name()='li']
  -- /descendant::*[local-name()='a'][@class][contains(concat(' ', normalize-space(@class), ' '), ' external ')]
end
```

You can use [`xmlua.Searchable.css_select`][xmlua-searchable-css-select] to search nodes from DOM by CSS Selectors.

## Next step {#next-step}

Now, you knew all major LuaCS features! If you want to understand each feature, see [reference manual][reference] for each feature.


[install]:../install/

[xpath]:https://www.w3.org/TR/xpath/

[xmlua-searchable-css-select]:https://clear-code.github.io/xmlua/reference/searchable.html#css-select

[reference]:../reference/
