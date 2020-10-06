class API
  def self.gets_pokemon
    url = "https://pokeapi.co/api/v2/pokemon-species"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    results = JSON.parse(response)["results"]
    results.each do |c|
      Pokemon.new(name: c["name"], url: c["url"])
    end
  end

  def self.gets_pokemon_details(poke)
    url = poke.url
    uri = URI(url)
    response = Net::HTTP.get(uri)
    results = JSON.parse(response)
    description = results["flavor_text_entries"][0]["flavor_text"]
    description.gsub!(/[!@%&"]/,'')
    poke.description = description
    poke.cap_rate = results["capture_rate"]
    poke.habitat = results["habitat"]["name"]
    poke.generation = results["generation"]["name"]
  end
end
