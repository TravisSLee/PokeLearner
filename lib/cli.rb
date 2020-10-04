class CLI
  def menu
      API.gets_pokemon
      puts ""
      puts "Welcome to PokeLearner"
      puts "______________________"
      puts ""
      puts "Here is a list of the available pokemon. Pick one please"
      API.number_list
      prompt
      input = gets.strip.downcase
      #reach into poke.all and get the pokemon asked for and print it out
      while input != 'exit'
        if input == "description"
          please_pick
          input = gets.strip.downcase
          #checks if it is a pokemon then puts the pokemon and a description
          if API.check(input) == true
            puts true
          else
            puts false
          end

        elsif input == "capture rate"
          please_pick
          input = gets.strip.downcase
          ##checks if it is a pokemon then puts the pokemon and a capture rate
        elsif input == "genus"
          please_pick
          input = gets.strip.downcase
          #checks stuff
        elsif input == "habitat"
          please_pick
          input = gets.strip.downcase
          #checks more
        else
          puts "Sorry, that Pokemon is unavailable at the moment, further research is needed!!"
        end
      end
      puts "Thank you for coming today."
      puts "Bye Bye!!"
    end

    def prompt
      puts ""
      puts "Now, what do you what to learn about a Pokemon? Or, hit 'exit' to exit the app."
      puts ""
    end

    def please_pick
      puts ""
      puts "Please pick a Pokemon."
      puts ""
    end
  end
