## ubuntuのディレクトリ英語化
  * http://www.atmarkit.co.jp/flinux/rensai/linuxtips/a077changelang.html
  
  * 以下手順
    1. `LANG=C xdg-user-dirs-gtk-update`を実行
    2. ［Update names］ボタンをクリックする
    
## rbenvインストールエラー
  * http://qiita.com/baboocon/items/fb81946fc088b18d6a3a
  * `Results logged to /tmp/ruby-build.~~~.log`とあったので対象のログをcatで確認
  * ログ内に`try to apt-get ~~~`とあったので下記を入力
    * `apt-get install -y libssl-dev libreadline-dev zlib1g-dev`
      * 上記ログの中身に応じて対応する