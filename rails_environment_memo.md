## rails環境構築
  * 下記のサイトを参照
    * http://qiita.com/rinkun/items/0466932057b15fa0da7b
    * http://qiita.com/creamysellotape/items/010e4066d8a1907546d9
    
  * 前提
    * gitは入れておくこと
  
  * rbenvインストール
    1. `git clone git://github.com/sstephenson/rbenv.git ~/.rbenv`
      * apt-get使ってもいい  
    2. `eval "$(rbenv init -)"`
    3. `rbenv versions`でバージョン確認
    
  * rubyインストール
    1. `git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build`
      * ruby-buildインスココマンド
    2. `rbenv install 2.2.3`
      * 好きなrubyインストール
    3. インストールに成功したら`rbenv rehash`
    4. `rbenv local 2.2.3`,`rbenv rehash`各々実行
      * プロジェクトで使用するrubyバージョンの指定
      * すべての環境で指定するときは`rbenv global 2.2.3`
      * rehashを忘れない
    5. `ruby -v`でバージョン確認
    
  * bundlerインストール
    1. 先ほどインストールしたrubyにbundlerがインストールされているか確認
      * `$ rbenv exec gem list`
    2. なければインストール
      * `$ rbenv exec gem install bundler`
    