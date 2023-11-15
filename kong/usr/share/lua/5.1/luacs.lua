local luacs = {}

luacs.VERSION = "1.0.2"

luacs.Parser = require("luacs.parser")
luacs.XPathConverter = require("luacs.xpath-converter")

function luacs.to_xpaths(selectors_group)
  local xpath_converter = luacs.XPathConverter.new()
  local parser = luacs.Parser.new(selectors_group, xpath_converter)
  parser:parse()
  return xpath_converter.xpaths
end

return luacs
