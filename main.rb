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
        #animal_list.each do |animal|  animal.up_for_adoption? ? puts animal.name.to_s.foreground(:yellow) end
    elsif input == 'va'
        #animal_list.each {|animal| animal.up_for_adoption? ? puts animal.name.to_s.foreground(:yellow) : animal.name.to_s.foreground(:red)}
        puts animal_list
    else
      p "^^^^^   Error in input   ^^^^^^"
    end
end

#### Variable default #####
client_list = []
animal_list = []
#################START NON-DEF ###############
begin
  print "What would you like to do: \n"
  print "Add Client (C)\nAnimal (A)\nView Animals up for adoption (V)\nView all Animals\nExit (E):\n"
  input = gets.chomp
  #valid("c","a","v","va","e")
  #clear
  #ec
  #go to options
  option(input,client_list,animal_list)

end while input != 'e'















