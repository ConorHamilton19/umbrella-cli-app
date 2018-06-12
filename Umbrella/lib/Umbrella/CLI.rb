class Umbrella::CLI 
  attr_accessor :rain
  
  def call 
    @rain = Umbrella::Weather.weather_setter
    gonna_rain
    further_prompt
    choose
  end 
  
  def gonna_rain
    if @rain != "0%"
      puts "Looks like rain is in the forecast, better grab an umbrella! The chance of rain is #{@rain.rain_perc}."
    else
      puts "No rain today! Leave that umbrella at home."
    end 
  end 
  
  
  def further_prompt
    puts "Would you like to know more about today's weather(y/n):"
    input = gets.chomp.downcase
    if input == "y"
      puts "
1) Weather Report
2) Temperature
3) Weather Condition
4) Wind Speed
5) Sunrise/Sunset

"
    else 
      puts "Stay dry!"
      exit 
    end 
  end
  
  def choose            
    choice = nil
    while choice != "exit"
      puts "Choose a number, type list to see options again or exit to leave."
            
            choice = gets.chomp
            
            case choice
            when "1" 
              puts "Weather Report:
              Temperature- #{@rain.temperature}
              Condition- #{@rain.weather_condition}
              Wind- #{@rain.wind}
              Sunrise- #{@rain.sunrise}, Sunset - #{@rain.sunset}
              "
            when "2"
              puts "#{@rain.temperature}"
            when "3"
              puts "#{@rain.weather_condition}"
            when "4"
              puts "#{@rain.wind}"
            when "5"
              puts "Sunrise- #{@rain.sunrise}, Sunset - #{@rain.sunset}"
            when "exit"
              puts "Stay dry!"
            when "list"
              puts "
1) Weather Report
2) Temperature
3) Weather Condition
4) Wind Speed
5) Sunrise/Sunset

"
            else
              puts "Did not understand that commmand."
            end  
      end
  end 
  
end 