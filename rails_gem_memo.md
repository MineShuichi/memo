## Gemパッケージ
  * Rubyで使われるライブラリやアプリケーションはGemと呼ばれる形式のパッケージにすることができる
  * railsもgem形式でパッケージになったもの
    * `gem install rails`コマンドが証拠
  * spliteなどもgem
  
## Bundler
  * Gemfileにgemパッケージをまとめておくことで一斉にインスコできる
    * `bundle install`コマンドでGemfileに基づいたパッケージがインストール
  * 複数のPCで必要なGemパッケージをインストールする仕組みを提供してくれる
  * BundlerはRailsアプリケーションに必要となるGemパッケージの種類やバージョンを管理する
  