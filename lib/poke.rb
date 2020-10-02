class Pokemon

  attr_accessor :name, :number, :description, :url

  @@all = []

  def initialize(name: nil, number: nil, description: nil, url: nil)
    @name = name
    @number = number
    @description = number
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_number(number)
    self.all.select {|p| p.number == number}
  end
end
