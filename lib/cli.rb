class CLI
  def menu
      input = ""
      while input != "exit"
        puts ""
        puts "Welcome to PokeLearner"
        puts "______________________"
        puts
        puts ""
        puts "Enter a number to learn about the world of Pokemon, or hit 'exit' to exit the app"
        @number = gets.strip.downcase
        API.gets_pokemon(number)
        if number.to_i > 0 && number.to_i <= 893
          API.gets_pokemon
        else
          puts "Such Pokemon doesn't exist yet!!"
        end
      end
  end

end
