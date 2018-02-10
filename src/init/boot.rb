# == Initクラス ==
# 実行時に読み込む設定ファイルの情報を確認するクラス

class Boot
  def initialize
    puts "==== Boot Load ===="
  end

  # このクラスにあるprivateメソッドをすべて実行し結果によってメッセージを表示
  def load
    puts "== File setting =="
    puts "--> Message : Create backup-list.txt" unless is_create_file
    puts ""

    puts "== Directory setting =="
    puts "--> Message : Create backup" unless is_create_directory
    puts ""
  end

  private

  # ファイル周りの起動時設定
  # backup-list.txtがなければ作成する
  def is_create_file
    return true if File.exist?("backup-list.txt")
    File.open("backup-list.txt", "w")
    return false
  end

  # ディレクトリ周りの起動時設定
  # backupがなければ作成する
  def is_create_directory
    return true if Dir.exist?("backup")
    Dir.mkdir("backup", 0755)
    return false
  end
end
