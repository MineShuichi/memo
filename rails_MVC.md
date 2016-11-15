## railsのMVC

### ルーティング
  * ユーザーからの入力はURLとして送られてくる
  * この情報からどのコントローラーのどのアクションかを判断する
  * このとき使われるものが`routes.rb`
    * config内にある
    * このファイルにはURLとコントローラー、アクションが対応して列挙されている
      * `http://localhost:3000/hello`を開いた時に`booklist`コントローラの`hello`アクションが呼び出される
      ~~~
      Books::Application.routes.draw do

      get 'hello' => 'booklist#hello'
      get 'bye' => 'booklist#bye'
      
      end
      ~~~
      
### コントローラー
  * ユーザーのブラウザに結果を返すのはコントローラー
  * railsのアクションはcontrollerの中にある
  * 静的なページはgenerateスクリプトでコントローラを生成するところから始まる
  * viewを呼び出すときには
  ~~~
  class BooklistController < ApplicationController

    def hello
      render "booklist/hello"
    end
  end
  ~~~
  * 呼び出すビューが以下の構成のときはrenderを省略可能
    * 「app\views\コントローラ名\アクション名.html.erb」

  
### ビュー
  * ビューは変数を介して渡されたデータよりHTMLを作成する
  * 作成されたHTMLはコントローラーに渡す
  * ビューがユーザーにデータを返しているわけではない
  * 基本はコントローラーとしか通信を行わない
  * テンプレート名は「(アクション名).html.erb」
  
### 