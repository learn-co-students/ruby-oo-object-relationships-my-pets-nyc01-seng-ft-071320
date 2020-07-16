require "pry"

class Owner

  @@all = []

attr_reader :name, :species

def initialize(name, species="human")
  @name = name
  @species = species
  @@all << self
end

def say_species
  "I am a #{@species}."
end

def self.all
  @@all
end

def self.count
  self.all.count
end

def self.reset_all
  self.all.clear
end

def cats
  Cat.all.select {|cat| cat.owner == self}
end

def dogs
  Dog.all.select {|dog| dog.owner == self}
end

def buy_cat(cat_name)
  Cat.new(cat_name,self)
end

def buy_dog(dog_name)
  Dog.new(dog_name,self)
end

def walk_dogs
  Dog.all.select {|dog| dog.mood = "happy"}
end

def feed_cats
  Cat.all.select {|cat| cat.mood = "happy"}
end

def sell_pets
  Dog.all.select {|dog| dog.mood = "nervous"}
  Cat.all.select {|cat| cat.mood = "nervous"}
  Dog.all.each {|dog_owners| dog_owners.owner = nil}
  Cat.all.each {|cat_owners| cat_owners.owner = nil}
end

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end



end