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

  def self.number_list
    Pokemon.all.each.with_index(1) do | p, i |
      puts "#{i}. #{p.name}"
    end
  end

  def self.check(poke)
    Pokemon.all.include?{|p| p.name == poke}
  end

  def self.get_desription(poke)
    #use poke.url to acess another page of the api and get info to add to ths poke object
    Pokemon.all.map {|p| p.name == poke}
      url = p.url
      uri = URI(url)
      response = Net::HTTP.get(uri)
      results = JSON.parse(response)
    end
  end
