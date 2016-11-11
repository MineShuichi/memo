## hamlメモ

### 参考
  * http://log.nissuk.info/2012/05/haml-haml.html
  * http://qiita.com/shizuma/items/75b160bc43c65787f3a1
  * http://morizyun.github.io/blog/beginner-rails-tutorial-haml/
  * http://ruby-rails.hatenadiary.com/entry/20141001/1412097051
  * http://qiita.com/satomyumi/items/b58888506e41d1370fd1

### 略
  * HTML Abstraction Markup Language
  
### 準備
  * Gemfileに追加してbundle install
    * `gem 'haml-rails'`

### haml書き方の種類
  * 以下全部同じもの
    * %a(href="http://example.com" title="title")
    * %a{"href"=>"http://example.com", "title"=>"title"}
    * %a{:href=>"http://example.com", :title=>"title"}
    * %a{href:"http://example.com", title:"title"}
    
### htmlとの比較
  * haml
  ~~~
  %div{id: "my-id"} Contents
  %dev{class: "my-class"} Contents
  ~~~
  
  * htmlに変換されたとき
  ~~~
  <div id="my-id">
    Contents
  </div>
  <div class="my-class">
    Contents
  </div>
  ~~~
  
### Rubyの変数を使う
  * haml
  ~~~
  - hoge = "fuga"
  - hagu = 'like'
  %div{class: hoge}
    test message is #{hoge}
    = hagu
  ~~~
  
  * html
  ~~~
  <div class="fuga">
    test message is fuga
    like
  </dev>
  ~~~
  
### erbとの比較
  * haml
  ~~~
  !!! 5
  %html
    %head
      %title HamlTest
      = stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true
      = javascript_include_tag 'application', 'data-turbolinks-track' => true
      = csrf_meta_tags

    %body

    = yield
  ~~~
  
  * erb
  ~~~
  <!DOCTYPE html>
  <html>
  <head>
    <title>SlimTest</title>
    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
    <%= csrf_meta_tags %>
  </head>
  <body>

  <header id="header">
    <h1 class="title logo">Slim Test</h1>
  </header>

  <%= yield %>

  </body>
  </html>
  ~~~
  
### erbからhamlへの簡単な覚え方
  * `<, >, <%, %>`をタグから削除し、`%`をタグの直前につける
  * 閉じタグをすべて削除
  * `<%= ... >`は`=`にする
  * class属性やid属性は、%p.fieldsや%p#contentsなどにする
    * タグがdivのときはdivを省略し#contentと記載できる
  * class属性やid属性以外のhrefやimgなどの属性を追加したい場合はハッシュで記載
    * `%a{:href => "#"} ここにリンクのテキスト }`
  * コメントは`/`をするとhtmlに表示されない
  
### 変換webサービス
  * erb,html => haml
    * http://html2haml.herokuapp.com/