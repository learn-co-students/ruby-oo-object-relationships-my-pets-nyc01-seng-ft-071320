# require 'pry'

class Owner
  @@all = []
  attr_reader :name, :species

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
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
      Cat.all.select do |index|
      index.owner == self
    end
  end

  def dogs
      Dog.all.select do |index|
      index.owner == self
    end
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.map do |element|
      element.mood = "happy"
    end
  end

  def feed_cats
    self.cats.map do |element|
      element.mood = "happy"
    end
  end

  def all_pets
    all_pets = [] 
    Dog.all.each {|dog| all_pets << dog}
    Cat.all.each {|cat| all_pets << cat}
    all_pets
  end

  def sell_pets
    self.all_pets.map do |element|
      element.mood = "nervous"
      element.owner = nil
    end
  end
# binding.pry

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end