require 'pry'
require_relative 'lib/owner.rb' 
require_relative 'lib/cat.rb' 
require_relative 'lib/dog.rb'

def owner_name
    puts "What's your name?"
    name = gets.chomp
    Owner.new(name)
end

def choose_cat_name
    puts "What name would you like?"
    choice = gets.chomp
    owner = owner_name
    cat_1 = Cat.new(choice, owner)

end

def choose_dog_name
    puts "What name would you like?"
    choice = gets.chomp
    owner = owner_name
    dog_1 = Dog.new(choice, owner)
end

def pet_pref
    puts "Would you like to buy a cat or a dog? (c/d)"
    preference = gets.chomp
    if preference == "c" || preference == "cat"
        choose_cat_name
    elsif preference == "d" || preference == "dog"
        choose_dog_name
    end

end



def prompt
    puts "Would you like to buy a pet? (y/n)"
    response = gets.chomp
    if response == "y" || response == "yes"
        pet_pref
    else
        puts "If you don't want to buy a pet... Why are you in a pet store???"
    end

end

def run
    prompt
end

binding.pry
run

      