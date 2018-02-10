# =========== sbScript ===========
# サーバ簡易バックアップスクリプト
# v 1.0
# ================================

# require
require_relative "src/init/boot"
require_relative "src/command/my_cli"

# mainメソッド
def main
  boot = Boot.new
  terminal = MyCLI.new

  boot.load

  puts "== START TERMINAL =="
  terminal.exec
end

# mainメソッド呼び出し
if __FILE__ == $0
  main
end
