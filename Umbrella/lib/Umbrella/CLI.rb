class Umbrella::CLI 
  
  def call 
    #need to figure out input for first line.
    puts "To grab umbrella or not"
    puts "Would you like to know more about today's weather(y/n):"
    input = gets.chomp 
    if input == "y"
      puts "Please pick number:
            1) Weather Report
            2) Temperature
            3) Weather Condition
            4) Wind Speed
            5) Sunrise/Sunset"
            
            choice = gets.chomp
            
            case choice
            when "1" 
              puts "Full report"
            when "2"
              puts "temp"
            when "3"
              puts "Weather condition"
            when "4"
              puts 'wind'
            when "5"
              puts 'ss '
            when "exit"
              puts "Stay dry!"
            else
              puts "Did not understand that commmand. Please choose a number 1-5 or type 'exit' to quit."
            end   
    else 
      puts "Stay dry!"
  end 
  
end 