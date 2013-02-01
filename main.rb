require 'pry'
require 'rainbow'


## required objects
require_relative 'animals'
require_relative 'clients'

## Functions  - Standard

def ec()
  gets
  print `clear`
end

def valid(*va) begin
  print "\nEnter: "
  v=gets.chomp.downcase
end while !( va.to_s.include? v) end

## Function  - Custom
def option(input,client_list,animal_list)
    if input == 'c'
      #Adding new client
      client_list << new_client
      #
    elsif input =='a'
      #Adding new animal
      animal_list << new_animal
      #
    elsif input == 'v'
        puts "These animals are up for adoption:".foreground(:blue)
        animal_list.each do |animal|
          if animal.up_for_adoption
           puts animal.name.to_s.foreground(:yellow)
         end
        end
    elsif input == 'va'
      puts "These animals are in the shelter:".foreground(:blue)
        animal_list.each do |animal|
          if animal.up_for_adoption
            puts animal.name.to_s.foreground(:yellow)
          else
            puts animal.name.to_s.foreground(:red)
          end
        end
    elsif input == 'vc'
        puts "--------------- Client List ------------\n".foreground(:blue)
        client_list.each {|client| puts "Name: "+ client.name.to_s + "  --- Age: "+ client.age.to_s}
        print "\n\n"
    elsif input == 'e'
      #Do nothing
    else
      p "^^^^^   Error in input   ^^^^^^"
    end
    ec
end


#### Variable default #####
client_list = []
animal_list = []

  animal_list << Animal.new('bone', 'bulldog', '2', 'female', [],true)
  animal_list << Animal.new('superbad', 'retriever', '1', 'male', [],true)
  animal_list << Animal.new('fetch', 'beagle', '1', 'female', [] ,false)

#################START NON-DEF ###############
begin
  print "What would you like to do: \n"
  print "Add Client    |  (C)\nAnimal     | (A)\nView Animals up for adoption   | (V)\nView all animals  |  (VA)\nView Client list  | (VC)\nExit   | (E)\n\n:"
  input = gets.chomp
  ####valid("c","a","v","va","e")
  #clear

  #go to options
  option(input,client_list,animal_list)
end while input != 'e'
















