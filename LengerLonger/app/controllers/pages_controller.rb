require 'net/http'

class PagesController < ApplicationController
  
  def index
    @weather = Weather.get_daily_weather
  end


end
