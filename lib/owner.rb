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
    new_cat = Cat.new(name)
    new_cat.name if new_cat
    #binding.pry
  end
  def buy_dog(name)
    new_dog = Dog.new(name)
    new_dog.name if new_dog
  end

  def walk_dogs
    self.dog.mood = "happy"
  end
  def feed_cats
    self.cat.mood = "happy"
  end 
  def sell_pets
    Dog.all.reject do |dog| 
      dog.mood = "nervous"
      dog.owner = nil
    end
    cat2 = Cat.all.reject {|cat| cat.owner == self}
      #binding.pry
        #cat.owner = nil
        #cat.mood = "nervous"
    
    #binding.pry
    # Dog.all = []
    # Cat.all = []

    #binding.pry
  end


end