class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets, :dog, :cat
    
  @@all = []
  @@pets = {:dogs => [], :cats => []}
end