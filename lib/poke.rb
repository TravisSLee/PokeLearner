class Pokemon

  attr_accessor :name, :number

  @@all = []

  def initialize(name)
    @@all << self
  end

  def self.all
    @@all
  end
end
