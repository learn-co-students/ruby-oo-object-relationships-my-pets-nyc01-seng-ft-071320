require 'pry'

class Owner
  attr_reader :species
  attr_writer
  attr_accessor :name

  @@all = []

  def initialize(name = nil, species)
    @name = name
    @species = "human"
    @@all << self
    # all
  end

  # def name
  #   self.name
  # end

  def say_species
    "I am a #{self.species}."
  end

  def count
    @@all.count
  end

  def reset_all
    @@all = []
  end

  def all
    @@all
  end

end
binding.pry
a = Owner.new("Vincent", "human")