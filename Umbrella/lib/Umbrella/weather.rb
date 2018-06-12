class Umbrella::Weather
  attr_accessor :temperature, :wind, :sunrise, :sunset, :weather_condition, :rain_perc
  
  def self.weather_setter(location_url)
    
    doc = Nokogiri::HTML(open("https://weather.com/weather/today/l/#{location_url}"))
    
    rain = self.new 
    
    rain.temperature = doc.search("div.today_nowcard-temp").text
    rain.weather_condition = doc.search("div.today_nowcard-phrase").text 
    rain.wind = doc.search("div.today_nowcard-sidecar").search("td")[0].text
    rain.sunrise = doc.search("span.wx-dsxdate")[0].text
    rain.sunset = doc.search("span.wx-dsxdate")[1].text
    rain.rain_perc = doc.search("span.precip-val").first.text
    
    rain
  end 
  
  end 