class Weather
  require 'typhoeus'

  def self.get_daily_weather
     response = Typhoeus::Request.get("https://api.forecast.io/forecast/afd057c04e283cb395963d0b10bc3016/41.8781136,-87.6297982")
    JSON.parse(response.body) if response.code == 200
  end

end
