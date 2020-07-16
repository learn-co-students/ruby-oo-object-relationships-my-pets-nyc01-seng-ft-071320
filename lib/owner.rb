require 'pry'
require_relative './cat.rb'
require_relative './dog.rb'

class Owner
  attr_reader :species, :name

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end
  def add_cat(cat)
    cat.owner = self
  end
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  def buy_cat(catName)
    Cat.new(catName, self)
  end
  def buy_dog(dogName)
    Dog.new(dogName, self)
  end
  def walk_dogs
    Dog.all.select{|dog| dog.mood = "happy"}
  end
  def feed_cats
    Cat.all.select{|cat| cat.mood = "happy"}
  end
  def sell_pets
    pets = self.dogs + self.cats
    pets . each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end


#cat_1 = Cat.new("Garfield", @owner)
#binding.pry
#cat_1 = Cat.new("Garfield", @owner)

