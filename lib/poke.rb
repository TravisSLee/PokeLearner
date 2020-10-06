class Pokemon

  attr_accessor :name, :number, :description, :url, :generation, :cap_rate, :habitat, :names

  @@all = []
  @@names = []

  def initialize(name: nil, url: nil)
    @name = name
    @description = description
    @number = number
    @url = url
    @generation = generation
    @cap_rate = cap_rate
    @habitat = habitat
    @@all << self
  end

  def self.all
    @@all
  end

  def self.names
    Pokemon.all.each do |p|
      self.names.push(p.name)
    end
  end
end
