class Pokemon

  attr_accessor :name, :number, :description, :url, :generation, :cap_rate, :habitat, :names

  @@all = []

  def initialize(name: nil, url: nil)
    @name = name
    @names = []
    @description = description
    @number = number
    @url = url
    @generation = generation
    @cap_rate = cap_rate
    @habitat = habitat
    @@all << self
    @names << name
  end

  def self.all
    @@all
  end

  def self.make_name_list
    Pokemon.all.each do |p|
      @names << p.name
    end 
  end
end
