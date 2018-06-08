class Umbrella::Weather
  attr_accessor :temperature, :wind, :sunrise_sunset, :weather_condition, :rain_perc
  
  def initialize
    weather_setter
  end 
  
  def self.weather_setter
    @temperature = "scraped info"
    @weather_condition = "scraped"
    @wind = "scraped"
    @sunrise_sunset = "scraped"
    @rain_perc = "scraped"
  end 
  
  def self.weather_scrape
    doc = Nokogiri::HTML(open())
  end 
end 