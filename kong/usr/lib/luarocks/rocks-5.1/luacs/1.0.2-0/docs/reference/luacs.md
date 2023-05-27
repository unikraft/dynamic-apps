---
title: luacs
---

# `luacs` module

## Summary

It's the main module.

## Module functions

### `to_xpaths(css_selectors_group) -> {xpath1, xpath2, ...}` {#to-xpaths}

It converts CSS Selectors to one or more XPaths.

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
