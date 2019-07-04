class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets, :dog, :cat

  @@all = []
  @@pets = {:dogs => [], :cats => []}

  def initialize(species)
    @species = species
    @name = name
    @@all << self
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
    @@pets
  end

  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @@pets[:dogs].each do |d|
      d.mood = "happy"
    end
  end

  def play_with_cats
    @@pets[:cats].each do |c|
      cat.mood = "happy"
    end
  end

end
