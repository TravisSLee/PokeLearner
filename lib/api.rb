class API
  def self.gets_pokemon(number)
    url = "https://pokeapi.co/api/v2/pokemon/#{number}/"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    pokemon = JSON.parse(response) 
  end

end
