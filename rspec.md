## URL
  * https://leanpub.com/everydayrailsrspec-jp/read
  * http://qiita.com/luckypool/items/e3662170033347510c3c
  * http://qiita.com/pugiemonn/items/11a2bc8403e5947a8f13

## メモ
  * describeの後はクラス名
  * pendingエラーはテスト対象をrequireしなければ発生
  * 最小単位は`describe`,`it`,`expect().to`
  
  * `describe`はクラス名
  * `it`はテストの概要
  * `expect().to`は引数に変数を渡して調査
  * exampleとはitで始まる一行
    * exampleの説明は動詞から始まる
  
  * メソッド名の最後に`?`をつけるのはtrueかfalseを返すメソッド名の慣習
  * rubyのコンストラクタは`initialize`メソッド
  ~~~ruby
  def initialize(name="Pochi")
    @name = name
  end
  ~~~
  * `be_`を先頭につけるのはc++とかでいう`is関数名`
    * be_の後が真か偽かの調査として最初から用意されている