class CLI
  def menu
      input = ""
      while input != "exit"
        puts ""
        puts "Welcome to PokeLearner"
        puts "______________________"
        puts ""
        puts "Enter a number from 1 - 20 to learn about the world of Pokemon, or hit 'exit' to exit the app"
        @number = gets.strip.downcase
        if @number.to_i > 0 && @number.to_i <= 20
          API.gets_pokemon(@number)
        else
          puts "Sorry, that number is unavailable and that will be updated later on!!"
        end
      end
  end

end
