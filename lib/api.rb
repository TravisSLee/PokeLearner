class API
  def self.gets_pokemon
    url = "https://pokeapi.co/api/v2/pokemon-species"

    uri = URI(url)

    response = Net::HTTP.get(uri)

    results = JSON.parse(response)["results"]
    results.each do |c|
      Pokemon.new(name: c["name"], url: c["url"])
    end
    binding.pry
  end

  def self.get_desription(poke)
    #use poke.url to acess another page of the api and get info to add to ths poke object 
  end
end
