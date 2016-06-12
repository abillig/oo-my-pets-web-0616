require 'pry'

class Owner
  attr_accessor :name
  attr_reader :species
  attr_writer :pets
  # code goes here
  @@all = []

  def initialize(name, species="human")
    @name=name
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

def say_species
  "I am a human."
end

def pets
  @pets 
end 

def buy_fish(fish)
    new_fish = Fish.new(fish)
    self.pets[:fishes] << new_fish
end

def buy_cat(cat)
  self.pets[:cats] << Cat.new(cat)
end

def buy_dog(dog)
  self.pets[:dogs] << Dog.new(dog)
end

def walk_dogs
self.pets[:dogs].each do |dog| dog.mood="happy" end
  end

  def play_with_cats
    self.pets[:cats].each do |dog| dog.mood="happy" end
    end
     def feed_fish
    self.pets[:fishes].each do |dog| dog.mood="happy" end
    end

    def sell_pets
      self.pets.each do |type, array|
        array.each do |animal|
          animal.mood="nervous"
        end
        array.clear
      end
    end

    def list_pets
      "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
end

end