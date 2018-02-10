# == Cronrcクラス ==
# cronの設定に関するクラス

# require
require "date"
require "json"

class Cronrc
  # default setting
  def initialize
    File.open("settings/cronrc.json") do |file|
      @cron_setting = JSON.load(file)
    end
    if @cron_setting["directory"] == "default"
      @cron_setting["directory"] = "cron" + Date.today.to_s
    end
  end

  # 設定を公開するメソッド
  def information
    return @cron_setting
  end

  # 設定を変更するためのメソッド
  def change(key, value)
    return unless @cron_setting.has_key?(:key)
    @cron_setting[key] = value
  end
end
