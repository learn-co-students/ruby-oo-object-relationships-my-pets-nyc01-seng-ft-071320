class Cat
  @@all=[]
  attr_reader :name  
  attr_accessor :owner , :mood
  # coded goes here
  def initialize(name,owner)
    @owner=owner
    @name=name
    @mood = "nervous"
    @@all<<self
  end 
  def self.all
    @@all
  end 
  
end