class Cartoon
require 'net/http'

  def self.joke
    uri= URI.parse('http://xkcd.com/info.0.json')
    @response = JSON.parse(Net::HTTP.get(uri))
  end

end


