---
title: none
---

<div class="jumbotron">
  <h1>LuaCS</h1>
  <p>{{ site.description.en }}</p>
  <p>The latest version
     (<a href="news/#version-{{ site.version | replace:".", "-" }}">{{ site.version }}</a>)
     has been released at {{ site.release_date }}.
  </p>
  <p>
    <a href="tutorial/"
       class="btn btn-primary btn-lg"
       role="button">Try tutorial</a>
    <a href="install/"
       class="btn btn-primary btn-lg"
       role="button">Install</a>
  </p>
</div>

## About LuaCS {#about}

LuaCS is a Lua library for parsing [CSS Selectors][css-selectors]. It's written in pure Lua.

LuaCS provides CSS Selectors to [XPath][xpath] converter. You can use the feature by just calling [`luacs.to_xpaths`][luacs-to-xpaths].

[XMLua][xmlua] is well integrated with LuaCS. You can search nodes in HTML/XML DOM with CSS Selectors by ['xmlua.Searchable.css_select`][xmlua-searchable-css-select].

## Documentations {#documentations}

  * [News][news]: It lists release information.

  * [Install][install]: It describes how to install LuaCS.

  * [Tutorial][tutorial]: It describes how to use LuaCS step by step.

  * [Reference][reference]: It describes details for each features such as classes and methods.

## License {#license}

LuaCS is released under [the MIT license][mit-license].

See [LICENSE][license] file for details such as copyright holders.

[css-selectors]:https://www.w3.org/TR/selectors-3/

[xpath]:https://www.w3.org/TR/xpath/

[luacs-to-xpaths]:reference/luacs.html#to-xpaths

[xmlua]:https://clear-code.github.io/xmlua/

[xmlua-searchable-css-select]:https://clear-code.github.io/xmlua/reference/searchable.html#css-select

[news]:news/

[install]:install/

[tutorial]:tutorial/

[reference]:reference/

[mit-license]:https://opensource.org/licenses/mit

[license]:https://github.com/clear-code/luacs/blob/master/LICENSE
