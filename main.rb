require 'pry'
require 'rainbow'
=begin

require_relative 'animal'
require_relative 'client'
=end


def ec()
  gets
  print `clear`
end

def valid(*va) begin
  print "\nEnter: "
  v=gets.chomp.downcase
end while !( va.to_s.include? v) end

def option(input)
    if input = 'c'
      #Adding new client

    elsif input ='a'
      #Adding new animal

    else
      p "^^^^^   Error in input   ^^^^^^"
    end
end


#################START NON-DEF ###############
begin
  print "What would you like to do: \n"
  print "Add Client (C) Animal (A) or Exit (E):"
  input = valid("c","a","e")

  option(input)

do while input != 'e'















