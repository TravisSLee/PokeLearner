class API
  def self.gets_pokemon(number)
    url = "https://pokeapi.co/api/v2/pokemon-species"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    binding.pry
    results = JSON.parse(response)["results"].each do |c|
      Pokemon.new(name: c["name", url: c["url"]])
    end
  end

end
