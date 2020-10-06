class CLI
  def menu
      API.gets_pokemon
      Pokemon.make_name_list
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
        binding.pry
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
      puts "Here are your options:"
      puts "1. Type a number from 1 - 20 to see a certain Pokemon"
      puts "2. Type list to see the list again"
      puts "3. Type exit to exit the app"
      puts ""
    end

    def please_pick
      puts ""
      puts "Please pick a Pokemon."
      puts ""
    end
  end
