# == MyCLIクラス ==
# CLI周りに関するクラス

class MyCLI
  def initialize
  end

  def exec
    while true
      prompt
      case gets.chomp.to_i
      when 1
        puts "1番が選ばれました"
      else
        break
      end
      puts ""
    end
  end

  private

  #  画面に表示するプロンプトの設定メソッド
  def prompt
    puts "== prompt info =="
    puts "1       : backup"
    puts "another : exit"
    puts "=================\n"
    print "Exec number >> "
  end
end
