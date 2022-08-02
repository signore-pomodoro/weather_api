require 'uri'
require 'net/http'

class HomeController < ApplicationController
  
  def index
    url = "https://api.openweathermap.org/data/2.5/weather?units=metric&lat=55.751244&lon=37.618423&appid=a123f02f58e0d42daf9b9c45dcedd546"
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)
  end
end
