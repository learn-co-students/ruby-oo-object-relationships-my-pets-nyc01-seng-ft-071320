class Cat

  @@all_cats = []

  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, owner, mood="nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all_cats << self
  end

  def self.all
    @@all_cats
  end


end