# == MyCLIクラス ==
# CLI周りに関するクラス

# require
require_relative "cron"

class MyCLI
  def initialize
    @cron = Cron.new
  end

  # 実行管理メソッド
  def exec
    while true
      prompt

      Signal.trap(:INT) do
        puts "exit"
        exit(0)
      end

      case gets.chomp.to_i
      # クローンをスタートする
      when 1
        @cron.create
      # クローンの設定をする
      when 2
        puts "2番が選ばれました"
        @cron.setting
      # クローンの情報を表示する
      when 3
        @cron.information
      else
        puts "exit"
        exit(0)
      end
      puts ""
    end
  end

  private

  #  画面に表示するプロンプトの設定メソッド
  def prompt
    puts "== Prompt Info =="
    puts "1       : Start cron"
    puts "2       : Setting cron"
    puts "3       : Cron information"
    puts "another : exit"
    puts "=================\n"
    print "Exec number >> "
  end
end
