class API
  def self.gets_pokemon(number)
    url = "https://pokeapi.co/api/v2/pokemon-species//#{number}/"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    pokemon = JSON.parse(response)["pokemon-species"] do |c|
      Pokemon.new(name: c[""], description: c["flavor_text_entries" => ] )
    end
  end

end
