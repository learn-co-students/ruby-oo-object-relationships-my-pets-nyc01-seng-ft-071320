require 'pry'

class Owner
  attr_reader :name, :species

  @@all = []
  
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

  def cats
    Cat.all.select do |cat| 
      cat.owner == self
    end
  end

  def buy_cat(cat)
    cat = Cat.new(cat, self)
    cats
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_dog(dog)
    dog = Dog.new(dog, self)
    dogs
  end

  def walk_dogs
    dogs.map do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    cats.map do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    cats.map do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    dogs.map do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end

  def list_pets
   "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

end

# binding.pry