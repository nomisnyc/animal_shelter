require 'pry'

class Client
  attr_accessor :name, :age, :address, :phone, :email, :dob

  def initialize(name, age, address, phone, email, dob)
    @name = name
    @age = age
    @address = address
    @phone = phone
    @email = email
    @dob = dob
  end
end
