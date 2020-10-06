class Pokemon

  attr_accessor :name, :description, :url, :generation, :cap_rate, :habitat

  @@all = []

  def initialize(name: nil, url: nil)
    @name = name
    @description = description
    @url = url
    @generation = generation
    @cap_rate = cap_rate
    @habitat = habitat
    @@all << self
  end

  def self.all
    @@all
  end
end
