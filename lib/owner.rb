require 'pry'
require_relative './cat.rb'
require_relative './dog.rb'
class Owner
  # code goes here
  @@all = []
  attr_reader :name, :species

  def initialize(name)
    @name = name
    species
    save
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{@species}."
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
  end
end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
  end
end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def walk_dogs
    Dog.all.each do |dog|
      if dog.owner == self
       dog.mood = "happy"
      end
  end
end

def feed_cats
  Cat.all.each do |cat|
    if cat.owner ==self
      cat.mood = "happy"
    end
  end
end



def sell_pets  
  Dog.all.each do |dog|
    if(dog.owner == self)
      dog.mood = "nervous"
      dog.owner = nil
    end
end
Cat.all.each do |cat|
  if(cat.owner == self)
    cat.mood = "nervous"
    cat.owner = nil
  end
end
end

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end

end

