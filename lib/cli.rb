class CLI
  def menu
      API.gets_pokemon
      input = ""
      while input != "exit"
        puts ""
        puts "Welcome to PokeLearner"
        puts "______________________"
        puts ""
        #print out all the numbered list of all the Pokemon 
        puts "Enter a number from 1 - 20 to learn about the world of Pokemon, or hit 'exit' to exit the app"
        @number = gets.strip.downcase
        if @number.to_i > 0 && @number.to_i <= 20
          #reach into poke.all and get the pokemon asked for and print it out
        else
          puts "Sorry, that number is unavailable and that will be updated later on!!"
        end
      end
  end

end
