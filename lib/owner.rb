class Owner
  # code goes here
  attr_reader :name, :species
  @@all = []
  def initialize (name)
    @name = name
    @species = "human"
    @@all << self
  end
  def say_species
    "I am a human."
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

def cats
Cat.all.filter do |cat|
  cat.owner == self
end 
end

def dogs
  Dog.all.filter do |dog|
    dog.owner == self
  end 
end

def buy_cat (cat)
new_cat = Cat.new(cat, self)
end

def buy_dog (dog)
  new_cat = Dog.new(dog, self)
end
  
  def walk_dogs
  Dog.all.each do |dog|
  dog.mood = "happy"
     end
end

def feed_cats
  Cat.all.each do |cat|
  cat.mood = "happy"
     end
end

def sell_pets 
  pets = Cat.all + Dog.all
  pets.each do |pet|
    pet.mood = "nervous"
    pet.owner = nil
  end
end



def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end



end

