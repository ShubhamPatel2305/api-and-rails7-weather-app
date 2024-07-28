require 'uri'
require 'net/http'


class PagesController < ApplicationController
  def home
    uri = URI('https://api.openweathermap.org/data/2.5/weather?lat=23.0225&lon=72.5714&appid=466d7abbe009466948b7a6019a822fe5&units=metric')
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)
  end
end
