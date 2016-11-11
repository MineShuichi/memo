## rails環境構築

### 参考
* 下記のサイトを参照
  * http://qiita.com/rinkun/items/0466932057b15fa0da7b
  * http://qiita.com/creamysellotape/items/010e4066d8a1907546d9
  * http://qiita.com/egopro/items/aba12261c053eecd6d19
  * https://www.qoosky.io/techs/8a0f1d8d9e
  * http://qiita.com/emadurandal/items/e43c4896be1df60caef0
    
### 前提
  * gitは入れておくこと
  * 基本rbenvのみをgemでインストールする
    * gitを除くほかのパッケージはrbenv管理されたrubyごとにgemでインストール
  
### rbenvインストール
  1. `git clone git://github.com/sstephenson/rbenv.git ~/.rbenv`
    * apt-get使ってもいい  
  2. `eval "$(rbenv init -)"`
  3. `rbenv versions`でバージョン確認
    
### rubyインストール
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
    
### bundlerインストール
  1. 先ほどインストールしたrubyにbundlerがインストールされているか確認
    * `$ rbenv exec gem list`
  2. なければインストール
    * `$ rbenv exec gem install bundler`
    
### railsインストール(新規プロジェクト作成時はここからする)
  1. railsプロジェクトを作るフォルダを作成
    * `mkdir 任意の名前`
  2. 作成したフォルダに移動して以下
    * `bundle init`
      * システムrubyのgemパッケージにbundlerは存在しない
      * そのため"rbenv exec" で明記する必要は薄く、省略可
  3. Gemfileができているので`vim Gemfile`
    * 中の`# gem "rails"`のコメントアウトを外す
  4. プロジェクト管理下にgem(rails)インストール
    * `$ bundle install --path vendor/bundle`
  5. バージョン確認
    * `$ bundle exec rails -v`
      
### railsプロジェクト
  1. `bundle exec rails new .`
  2. Gemfileの上書きするかどうか聞かれるが前のは不要なので上書き
    * ここで上書きするとrailsのgemがなくなることに注意
    * 複数人で開発するときは`bundle install`でrailsが入らないので各自で作るか、gemに後で追加
    
    
### エラー対応
  * `ERROR: Failed to build gem native extension.`
    * `sudo apt-get install ruby2.1-dev(ここはログに出ているバージョン)`
      * `apt-cache search ruby | grep dev`でインストール可能なdevの正規表現を探す
      
  * bundle installエラー
    * sqlite
      * `apt-get install libsqlite3-dev`
    * uglifier
      * Gemfileの`#gem 'therubyracer', platforms: :ruby`のコメントアウトを外す
    
  * bundle installで入れたgemを削除したい
    * http://qiita.com/sys_cat/items/16d55e7cd8a3f177863a
    * 手順
      1.bundleで削除
        * `$ bundle exec gem uninstall gemname`
          * "gemname"は"Gemfile"であることが多い
      2.Gemfileから削除
        * Gemfileから該当Gem部分を削除
      3.Gemfile.lockから削除
        * `bundle update` または `bundle install`でGemfile.lockの中身を更新する
  
  * bundler管理gemのインストール先
    * `bundle config`もしくは`gem environment`でgemのインストール先パスを知れる