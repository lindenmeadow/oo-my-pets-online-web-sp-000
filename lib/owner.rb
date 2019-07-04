class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = { :dogs => [], :cats => [] }
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats]. {|cat| cat.mood = "happy"}
  end

  def list_pets
    "I have #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

  def sell_pets
    pets.each do |pet, arr|
      arr.map do |pet|
        pet.mood = "nervous"
      end
      arr.clear
    end
  end
end
