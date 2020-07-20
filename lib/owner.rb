class Owner
 
  # attr_accessor
  attr_reader :name, :species
 
  @@all = []
 
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
 
  def say_species
    return "I am a #{@species}."
  end
 
  def self.all
    @@all
  end
 
  def self.count
    @@all.count
  end
 
  def self.reset_all
    @@all.clear
  end
 
  def add_cat(cat)
    cat.owner = self
  end
 
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
 
  def add_dog(dog)
    dog.owner = self
  end
 
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
 
  def buy_cat(name)
    cat = Cat.new(name, @owner)
    cat.owner = self
  end
 
  def buy_dog(name)
    dog = Dog.new(name, @owner)
    dog.owner = self
  end
 
  def walk_dogs
    Dog.all.each {|dog| dog.mood = "happy"}
  end
 
  def feed_cats
    Cat.all.each {|cat| cat.mood = "happy"}
  end
 
  def sell_pets
    pets = self.dogs + self.cats
 
    pets.each {|pet| pet.mood = "nervous"
    pet.owner = nil}
  end
 
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
 end