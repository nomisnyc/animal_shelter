class Animal
  attr_accessor :name, :breed, :age, :gender, :toys, :up_for_adoption

  def initialize(name, breed, age, gender, toys)
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    @toys = toys
    @up_for_adoption = true
  end

  Animal.new('lucy', 'bulldog', '')