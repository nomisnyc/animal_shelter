class Animal
  attr_accessor :name, :breed, :age, :gender, :toys, :up_for_adoption

  def initialize(name, breed, age, gender, toys, adopt)
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    @toys = toys
    @up_for_adoption = adopt
  end



end

 def new_animal
    print "Name: "
    name = gets.chomp
    print "Breed: "
    breed = gets.chomp
    print "Age: "
    age = gets.chomp.to_f.round(1)
    print "Gender: "
    gender = gets.chomp
    print "Toys: "
    toys = gets.chomp

    Animal.new(name,breed,age,gender,toys,true)
  end

