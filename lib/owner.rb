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


end