class Weather
  require 'typhoeus'
  require 'json'

  def self.get_daily_weather
    # uri = URI("https://api.forecast.io/forecast/afd057c04e283cb395963d0b10bc3016/41.8369,87.6847")
    #  @response = Net::HTTP.get(uri)

     response = Typhoeus::Request.get("https://api.forecast.io/forecast/afd057c04e283cb395963d0b10bc3016/41.8369,87.6847")
    JSON.parse(response.body) if response.code == 200
  end

end
