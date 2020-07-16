class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  @@all =  []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    Dog.all << self 
  end

  def self.all
    @@all
  end
  # code goes here
end