class CLI
  def menu
      puts ""
      puts "Welcome to PokeLearner"
      puts "______________________"
      puts
      puts ""
      puts "Enter a number to learn about the world of Pokemon, or hit 'exit' to exit the app"
      @number = gets.strip.downcase
      API.gets_pokemon(number)
  end

end
