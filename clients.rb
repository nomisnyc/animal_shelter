require 'pry'

class Client
  attr_accessor :name, :age, :address, :phone, :email :dob

  def initialize(name, age, address, phone, email, dob)
    @name = name
    @age = age
    @address = address
    @phone = phone
    @email = email
    @dob = dob
  end



def new_client
  print "Name: "
  name = gets.chomp.downcase
  print "Age: "
  age = gets.chomp.to_i
  print "Address: "
  address = gets.chomp.downcase.to_s
  print "Phone: "
  phone = gets.chomp.to_i
  print "Email: "
  email = gets.chomp.to_s
  print "Date of Birth(mm/dd/yy): "
  dob = gets.chomp.to_s
  Client.new(name, age, address, phone, email, dob)
end

end

