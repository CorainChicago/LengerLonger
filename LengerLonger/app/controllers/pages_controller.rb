require 'net/http'

class PagesController < ApplicationController
  
  def index
    @weather = Weather.get_daily_weather
    @fact = Fact.new.get_fact
  end


end
