## ユースケース
  1. 複製元リポジトリの変化に対応するため
    * 更新したリモートの変更を取り込みたいが、ローカルでも複製元から変更をしているとき
  2. マージ前にブランチを整理するため
  
## 概要
  * 他ブランチの最新コミットを特定のブランチに採用したいときに使う
    * このとき"特定のブランチ"が完成しているブランチならばmergeをすべき
    
## コマンド
  1. `git checkout branch1`
  2. `git rebase master`

  1. `git rebase master branch1`
  
  * 上記のどちらか
  * 実行後、branch1はmasterの最新リビジョンから枝分かれしたことになる
  * もともとの枝分かれはなくなる

## mergeとrebaseについて
  * merge
    * 完成した特定のブランチの変更を取り込みたい
    * 基本的にmasterブランチがする操作
    * mergeはブランチを統合してしまう
      * 統合したブランチはなくなる
      
  * rebase 
    * 特定のブランチの変更を取り込みたい(未完成でもよい)
    * どちらのブランチからの操作もありえる
      * masterブランチにbranch1の変更を採用しておきたい
      * branch1ブランチにmasterの変更を採用して開発を続けたい
    * ブランチは統合されず、なくならない(厳密にはブランチのコピーが複製、もとのはなくなる)
    * ブランチの開始地点が変わる
  
## 同時に使えるコマンド
  * git reset
    * 一つ前のリビジョンに戻る
    
  * git reflag
    * 一つ前の使える状態？を見つける