class Pokemon

  attr_accessor :name, :number, :description, :url, :genus, :cap_rate, :habitat

  @@all = []

  def initialize(name: nil, url: nil)
    @name = name
    @description = description
    @number = number
    @url = url
    @genus = genus
    @cap_rate = cap_rate
    @habitat = habitat
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(poke)
    Pokemon.all.find{|p| p.name == poke}
  end
end
