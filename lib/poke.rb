class Pokemon

  attr_accessor :name, :number, :description, :url

  @@all = []

  def initialize(name: nil, url: nil)
    @name = name
    @description = description
    @number = number
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end


end
