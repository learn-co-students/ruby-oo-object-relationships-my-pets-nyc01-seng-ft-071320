require 'pry'
class Cat
  @@all = []
  attr_reader :name
  attr_accessor :mood, :owner
  def initialize(name,owner)  
    @owner = owner
    @name = name
    @mood = "nervous"
    save
  end

  def self.all
    @@all 
  end

  def save
    @@all << self
  end

#binding.pry
  # code goes here
end
