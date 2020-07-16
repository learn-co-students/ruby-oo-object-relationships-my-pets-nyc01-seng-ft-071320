class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  @@all =  []
  def initialize(owner, name)
    @name = name
    @owner = owner
    @mood = "nervous"
  end

  def self.all
    @all
  end
  # code goes here
end