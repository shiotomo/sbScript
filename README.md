# sbScript

## 説明
sbScriptはサーバのバックアップを簡単に行えるツールです。  
サーバのバックアップを気軽に取りたい時にお使いください。

## 言語
- Ruby 2.4.1

## 使い方
### 実行
```
ruby sbScript.rb
```
  
起動時に、backupディレクトリ、backup-list.txtがなければ自動で作成します。  
backupディレクトリはバックアップを取るためのディレクトリです。  
backup-list.txtはバックアップを取りたいディレクトリのパスをリストにしてまとめておくファイルです。  

backup-list.txtを作成するときのルール  
- 絶対パスで記述する
- 最後に/をいれない
- リストとして書いていく
 
作成例)
```
/home/hoge/piyo
/home/hoge/fuga
```

悪い例)
```
hoge <== 絶対パスでない
/home/hoge/piyo/ <== 最後に/が入っている
```
