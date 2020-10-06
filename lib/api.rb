class API
  def self.gets_pokemon
    url = "https://pokeapi.co/api/v2/pokemon-species"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    results = JSON.parse(response)["results"]
    results.each do |c|
      upcase_name = c["name"].capitalize
      Pokemon.new(name: upcase_name, url: c["url"])
    end
  end

  def self.gets_pokemon_details(poke)
    url = poke.url
    uri = URI(url)
    response = Net::HTTP.get(uri)
    results = JSON.parse(response)
    des = results["flavor_text_entries"][0]["flavor_text"]
    des.gsub!(/[\n\f]/,' ')
    poke.description = des
    poke.cap_rate = results["capture_rate"]
    poke.habitat = results["habitat"]["name"].capitalize
    poke.generation = results["generation"]["name"].capitalize
    binding.pry
  end
end
