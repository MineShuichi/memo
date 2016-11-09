* モデルはデータベースを操作するもの
* テーブルを操作するものではない

* mysqlでデータベース入る
  * http://techacademy.jp/magazine/5104
  
* sqlでデータベース入る
  * http://qiita.com/noppefoxwolf/items/993505d6c4c9bdef4a12
  
* railsではテーブルの作成やカラム、インデックスの追加にマイグレーションを使っている
  * http://www.rubylife.jp/rails/model/index5.html
  * マイグレーションを使うときはsqlを直接実行しない
  * マイグレーションスクリプトを作成して実行
    * テーブル作成時にもスクリプトをつくり、カラム追加時にも別のスクリプトを作る
  
* マイグレーションスクリプトは`db/migrate`
* モデルは`app/models`
    
* マイグレーションスクリプト実行
  * rake db:migrate

* mysqlで入ったデータベースの中で
  * show tabels  //テーブル一覧
  * show columns from テーブル名 //カラム表示
  
* sqlite3で入ったとき
  * .tables //テーブル一覧
  * .scheme テーブル名 // テーブル構造表示

* テーブル(データベース)の追加や削除はマイグレーション

* 