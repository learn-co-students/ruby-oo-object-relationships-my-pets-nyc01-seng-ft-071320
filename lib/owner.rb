require 'pry'

class Owner
  attr_accessor 
  attr_writer
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    save
  end
  def save
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
    Cat.all
  end
  def dogs
    Dog.all
  end

  def buy_cat(name)
    new_cat = Cat.new(name, self)
    #new_cat.name if new_cat
    #binding.pry
  end
  def buy_dog(name)
    new_dog = Dog.new(name, self)
    #new_dog.name if new_dog
  end

  def walk_dogs
    Dog.all.map {|dog| dog.mood = "happy"}
  end
  def feed_cats
    Cat.all.map {|cat| cat.mood = "happy"}
  end 
  
  def sell_pets
    pets_sold = []
    Dog.all.each do |dog| 
      dog.mood = "nervous"
      dog.owner = nil
#binding.pry
    end
    Cat.all.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
      pets_sold << cat
    end
    pets_sold
    binding.pry
  end

  def list_pets
    "I have #{Dog.all.count} dog(s), and #{Cat.all.count} cat(s)."
  end


end