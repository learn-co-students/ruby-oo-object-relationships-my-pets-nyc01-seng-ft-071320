require_relative './owner.rb'

class Dog
  attr_reader :name
  attr_accessor :owner, :mood
  @@allDogs = []

  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@allDogs << self
  end

  def self.all
    @@allDogs
  end

end