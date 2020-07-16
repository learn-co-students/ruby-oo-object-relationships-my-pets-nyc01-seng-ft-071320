class Cat
  attr_accessor :owner, :mood
  attr_writer
  attr_reader :name
  
  @@all = []

  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    save
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end

  # def clear_cats
  #   self.all.clear
  # end

end