class CLI
  def menu
      API.gets_pokemon
      input = ""
      while input != "exit"
        puts ""
        puts "Welcome to PokeLearner"
        puts "______________________"
        puts ""
        puts "Here is a list of the available pokemon. Pick one please"
        API.number_list
        puts "Now, enter a number from 1 - 20 to learn about a certain Pokemon, or hit 'exit' to exit the app"
        input = gets.strip
        if input.to_i > 0 && input.to_i <=20
        #reach into poke.all and get the pokemon asked for and print it out
          API.get_description(input)
        elsif input.to_i > 20
          puts "Sorry, that number is unavailable and that will be updated later on!!"
        elsif input.to_i < 0
          puts "Please, enter in a postive number."
        else
          puts "Sorry, please put a number!!"
        end
      end
  end
end
