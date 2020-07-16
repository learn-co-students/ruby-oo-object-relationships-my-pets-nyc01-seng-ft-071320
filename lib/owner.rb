require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species="human")
    @name = name 
    @species = species 
    save
  end

  def say_species
    "I am a #{@species}."
  end 

  def save
    @@all <<self
  end
  
  def self.all 
    @@all
  end

  def self.count 
    self.all.count
  end
  
  def self.reset_all 
    @@all = []
  end 

  def cats
    Cat.all.select do |i| 
      i.owner == self
    end
  end

  def dogs
    Dog.all.select do |i| 
      i.owner == self
    end
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    self.dogs.each do |i|
      i.mood = "happy"
    end
  end
  
  def feed_cats
    self.cats.each do |i|
      i.mood = "happy"
    end
  end

  def sell_pets 

    pets = self.dogs + self.cats 
    pets.each do |i|
      i.mood = "nervous"
      i.owner = nil 
    end    
  end


  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end