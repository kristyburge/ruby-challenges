# Use this to calculate based on the number input from the user
def pick_a_number(number)
    # Calculate
    (((number + 5) * 2 - 4) / 2 - number) 
end


# Ask the user for a number
puts "Pick a number, any number:"

# User gives a number which is converted to an integer and is assigned to the variable "number"
this_number = gets.to_i

# Return the string with the argument passed into the method
puts "Always " + pick_a_number(this_number).to_s + "!"