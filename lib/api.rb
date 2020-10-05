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
    poke.description = results["flavor_text_entries"][0]["flavor_text"]
    poke.cap_rate = results["capture_rate"]
  end

  # def self.get_desrciption(poke)
  #   #use poke.url to acess another page of the api and get info to add to ths poke object
  #   Pokemon.all.map {|p| p.name == poke}
  #     url = p.url
  #     uri = URI(url)
  #     response = Net::HTTP.get(uri)
  #     results = JSON.parse(response)
  #     poke.description = results["flavor_text_entries"]
  #   end
  #
  #   def self.get_cap_rate(poke)
  #     p = Pokemon.find_by_name(poke)
  #     url = p.url
  #     uri = URI(url)
  #     response = Net::HTTP.get(uri)
  #     results = JSON.parse(response)
  #     p.cap_rate = results["capture_rate"]
  #     puts "#{p.name}'s capture rate is #{p.cap_rate}%."
  #   end
  end
