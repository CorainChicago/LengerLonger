class Fact
  require 'net/http'

  def get_fact
    uri= URI.parse("http://numbersapi.com/" + formatted_request)
    @response = Net::HTTP.get(uri)
  end

  def formatted_request
    num = rand(0...2000)
    type = %w(trivia math date year)
    type[rand(0..3)]
    @response = "#{num}/#{type[rand(0..3)]}"
  end
end