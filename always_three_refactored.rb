# Ask the user for a number
puts "Give me a number:"
# User gives a number and is assigned to the variable "number"
number = gets
# Convert variable to integer and assign new value to variable "number"
number = number.to_i
# Assign number to the variable final_number which will be used in the calculations
final_number = number
# Run the math
final_number += 5
final_number *= 2 
final_number -= 4
final_number /= 2
# Store final_number by subtracting original number from the final_number after calculations
final_number -= number
# Show the results 
puts "Tada! The final number is #{final_number}! It is always #{final_number}!"