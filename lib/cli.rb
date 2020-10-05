class CLI
  def menu
      API.gets_pokemon
      puts ""
      puts "Welcome to PokeLearner"
      puts "______________________"
      puts ""
      puts "Here is a list of the available pokemon. Pick one please"
      print_pokes
      prompt
      input = gets.strip.downcase
      #reach into poke.all and get the pokemon asked for and print it out
      while input != 'exit'
        if input.to_i > 0 && input.to_i <= Pokemon.all.length
          poke = Pokemon.all[input.to_i - 1]
          API.gets_pokemon_details(poke) if !poke.cap_rate
          print_poke(poke)
        elsif input == "list"
          print_pokes
        else
          puts "Sorry, that Pokemon is unavailable at the moment, further research is needed!!"
        end
        prompt
        input = gets.strip.downcase
      end
      puts "Thank you for coming today."
      puts "Bye Bye!!"
    end

    def print_poke(poke)
      puts poke.name
      puts poke.description
      puts poke.cap_rate
      puts poke.habitat
      puts poke.generation
    end

    def print_pokes
      Pokemon.all.each.with_index(1) do | p, i |
        puts "#{i}. #{p.name}"
      end
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
