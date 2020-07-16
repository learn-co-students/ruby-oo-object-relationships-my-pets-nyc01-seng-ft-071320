class Dog
  @@all = []
  attr_accessor :owner
  attr_reader :name
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    save
  end
  # code goes here
  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def mood=(mood)
    @mood = mood
  end
  
  def mood 
    @mood
  end
end