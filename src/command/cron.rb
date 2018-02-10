# == Cronクラス ==

# require
require_relative "../init/cronrc"

class Cron
  def initialize
    @cronrc = Cronrc.new
  end

  def start
  end

  def setting
  end

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
end
