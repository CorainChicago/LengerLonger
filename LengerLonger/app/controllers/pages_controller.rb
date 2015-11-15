require 'net/http'

class PagesController < ApplicationController
  
  def index
    @response = Weather.get_daily_weather
  end


end
