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
    cat = Cat.all.find do |element|
      element.name == name
    end
    cat.owner = self
  end

  # def buy_dog(name)
  #   dog = Dog.all.find do |element|
  #     element.name == name
  #   end
  #   dog.owner = self
  # end

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
    @all_pets = []
    @all_pets << Dog.all
    @all_pets << Cat.all
  end

  def sell_pets
    self.dogs.map do |element|
      element.mood = "nervous"
      element.owner = nil
    end
    self.cats.map do |element|
      element.mood = "nervous"
      element.owner = nil
    end
  end
# binding.pry

end