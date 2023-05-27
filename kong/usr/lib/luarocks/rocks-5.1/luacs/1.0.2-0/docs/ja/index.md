---
title: none
---

<div class="jumbotron">
  <h1>LuaCS</h1>
  <p>{{ site.description.ja }}</p>
  <p>最新版
     （<a href="news/#version-{{ site.version | replace:".", "-" }}">{{ site.version }}</a>）
     は{{ site.release_date }}にリリースされました。
  </p>
  <p>
    <a href="tutorial/"
       class="btn btn-primary btn-lg"
       role="button">チュートリアルをやってみる</a>
    <a href="install/"
       class="btn btn-primary btn-lg"
       role="button">インストール</a>
  </p>
</div>

## LuaCSについて {#about}

LuaCS（るあっくす）は[CSSセレクター][css-selectors]をパースするLuaライブラリーです。Luaだけで書かれています。

LuaCSはCSSセレクターを[XPath][xpath]に変換する機能を提供します。[`luacs.to_xpaths`][luacs-to-xpaths]を呼ぶだけでこの機能を使えます。

[XMLua][xmlua]はLuaCSをうまく連携しています。['xmlua.Searchable.css_select`][xmlua-searchable-css-select]を使うとHTML/XMLのDOM内のノードをCSSセレクターで検索できます。

## ドキュメント {#documentations}

  * [おしらせ][news]: リリース情報。

  * [インストール][install]: LuaCSのインストール方法。

  * [チュートリアル][tutorial]: LuaCSの使い方を1つずつ説明。

  * [リファレンス][reference]: クラスやメソッドなど個別の機能の詳細な説明。

## ライセンス {#license}

LuaCSのライセンスは[MITライセンス][mit-license]です。

著作権保持者など詳細は[LICENSE][license]ファイルを見てください。

[css-selectors]:https://www.w3.org/TR/selectors-3/

[xpath]:https://www.w3.org/TR/xpath/

[luacs-to-xpaths]:reference/luacs.html#to-xpaths

[xmlua]:https://clear-code.github.io/xmlua/ja/

[xmlua-searchable-css-select]:https://clear-code.github.io/xmlua/ja/reference/searchable.html#css-select

[news]:news/

[install]:install/

[tutorial]:tutorial/

[reference]:reference/

[mit-license]:https://opensource.org/licenses/mit

[license]:https://github.com/clear-code/luacs/blob/master/LICENSE
