require 'pry'
class Owner
  # code goes here
  attr_reader :name , :species
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
    @@all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.filter do |c|
  
      c.owner == self 
    
     end
  end
    
  def dogs
    Dog.all.filter do |d|
    
      d.owner == self 
      
    end
  end

  def buy_cat(name)
    Cat.new(name, self) 
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    dogs.each do |d|
      d.mood = "happy"
    end
  end 

  def feed_cats
    cats.each do |c|
      c.mood = "happy"
    end
  end

  def sell_pets
    dogs.each do |d|
      d.mood = "nervous"
      d.owner = nil
    end

    cats.each do |c|
      c.mood = "nervous"
      c.owner = nil
    end
  end

  def list_pets
    dog_count = self.dogs.count
    cat_count = self.cats.count
    "I have #{dog_count} dog(s), and #{cat_count} cat(s)."

  end 

end