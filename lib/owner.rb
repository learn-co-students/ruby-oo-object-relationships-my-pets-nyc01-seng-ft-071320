require 'pry'

class Owner
  attr_reader :name, :species

  @@all = []
  @cats = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(cat)
    cat = Cat.new(cat, self)
    cats
  end
  
  def cats
    @cats = Cat.all.select do |cat| 
      cat.owner == self
    end
  end



end

# binding.pry