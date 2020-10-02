class API
  def self.gets_pokemon(number)
    url = "https://pokeapi.co/api/v2/pokemon-species//#{number}/"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    binding.pry
    pokemon = JSON.parse(response)
  end

end
