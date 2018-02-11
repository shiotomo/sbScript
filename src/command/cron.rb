# == Cronクラス ==

# require
require "fileutils"

require_relative "../init/cronrc"

class Cron
  def initialize
    @cronrc = Cronrc.new
  end

  # cronを作成
  def create
    # backup-data.txtからpathを取得
    File.open("backup-list.txt", "r") do |file|
      file.each do |path|
        backup(path)
      end
    end
  end

  # cronの設定を変更する
  def setting
  end

  # cronrc.jsonの状態を出力
  def information
    puts ""
    puts "==== cron information ===="
    puts "cronrc"
    puts "--------------------------"
    @cronrc.information.each do |key, value|
      puts "#{key}: #{value}"
    end
    puts "=========================="
  end

  private

  # pathの内容をbackupに保存
  # 引数について
  # path : バックアップをとるディレクトリのパス
  def backup(path)
    info = @cronrc.information
    backup = info["root_directory"] + "/" + info["directory"]

    # 保存するパスの表示
    puts "Backup directory path => " + path

    begin
      FileUtils.cp_r(path.chomp, backup)
      puts "Success!!"
    rescue
      puts "Fail"
    end

  end
end
