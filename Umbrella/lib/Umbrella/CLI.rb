class Umbrella::CLI 
  
  def call 
    #need to figure out input for first line.
    puts "To grab umbrella or not"
    further_prompt
    choose
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
5) Sunrise/Sunset"
    else 
      puts "Stay dry!"
    end 
  end
  
    def choose            
      choice = nil
    while choice != "exit"
      puts "Choose a number or input exit to leave."
            
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
              puts 'ss'
            when "exit"
              puts "Stay dry!"
            else
              puts "Did not understand that commmand. Please choose a number 1-5 or type 'exit' to quit."
            end  
        end
  end 
  
end 