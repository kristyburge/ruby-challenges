# Ask the user for a number
puts "Pick a number, any number:"

# User gives a number which is converted to an integer and is assigned to the variable "number"
number = gets.to_i

# Show the results 
puts "Tada! The final number is " + (((number + 5) * 2 - 4) / 2 - number).to_s + "!"