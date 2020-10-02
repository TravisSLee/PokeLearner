class Pokemon

  attr_accessor :name, :number, :description, :type1, :type2

  @@all = []

  def initialize(name: nil, number: nil, description: nil, type1: nil, type2: nil)
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
