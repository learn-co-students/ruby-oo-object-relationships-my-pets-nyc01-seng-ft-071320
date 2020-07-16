require 'pry'
require_relative './owner.rb'

class Cat
  attr_reader :name
  attr_accessor :owner, :mood
  @@allCats = []

  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@allCats << self
  end

  def self.all
    @@allCats
  end
end
