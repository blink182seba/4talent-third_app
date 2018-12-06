class CityController < ApplicationController
  require 'net/http'
  @@api_key = 'fd6147805558a2031de7fa6d8538f0f9'

  def index
    @cities = City.all
  end

  def get_temperatures
    @cities = City.all
    @cities.eager_load(:weathers).each do |city|
      temperature = client city.name
      puts "city: #{city.name}, has: #{temperature['main']['temp']} C°"
      city.weathers.create({temperature: temperature['main']['temp'], city_id: city.id })
    end
    redirect_to root_path
  end

  private
  def client city
    data = Net::HTTP.get(URI.parse("http://api.openweathermap.org/data/2.5/weather?appid=#{@@api_key}&q=#{city}&units=metric"))
    response = JSON.parse(data)
  end
end
