## railsログ
  * rails server を立ち上げたログの中にはやり取りされたデータや変数も表示されている
  * controllerの.saveでデータベースに変数をインサートしている
  * ログ上ではデータベースに値が送られているところは`POST`と表記されている
    * だから、目的の変数が送られていないときは.saveより前、new,createより後にある
  * データベースに値を送るときには送るものを制御している
    * `parmit(変数群)`に登録されたものだけが有用なデータとして送られ、その他はゴミとして破棄される
    * このparmitは`show.controller.erb`に登録されている
      * いわゆる`def show`アクション
  * ゴミとして破棄されたデータがでてきたときは`do not parmit`てきなログが出力される
    * 基本エラーのようなものなので、ゴミデータは出さないように注意

## 多対一
  * オブジェクトを使う場合で多対一のときには`belonged to`や`has many`に登録しないとダメ
    * モデルのソースの上のほうに記述されていることが多い
    
## テーブル表示
  * sqlite
    * `.tables`
    * `select * From タイトル名`