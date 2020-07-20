class Dog
  attr_reader :name  
  attr_accessor :owner , :mood
  @@all=[]

  def initialize(name,owner)
    @owner=owner
    @name=name
    @mood = "nervous"
    @@all<<self
  end 
  def self.all
    @@all
  end 
  def  buy_cat(name)
    cat=Cat.new(name, @owner)
    cat.owner = self
  end

  def buy_dog(name)
    dog=Dog.new(name,@owner)
    dog.owner= self

  end 

end