require 'pry'
class Owner

  attr_reader :name, :species

 @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    Owner.all << self
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
    Cat.all.select do |cat|
      
      cat.owner == self
      
    end 
  end

  def buy_cat(name)
    Cat.new(name, self)
    self.cats 
  end
end

#jacob = Owner.new("Jacob")
#jacob.cats 