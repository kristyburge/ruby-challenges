# Ask the user for a number
puts "Give me a number:"
# User gives a number and is assigned to the variable "number"
number = gets
# Convert variable to integer and assign to new variable called number_1
number_1 = number.to_i
# Assign number_1 to the variable number_2 which will be used in the calculations
number_2 = number_1
# Run the math
number_2 += 5
number_2 *= 2 
number_2 -= 4
number_2 /= 2
# Create variable for the final number to take the final result of variable number_2 and subtract the original number given by the user
final_number = number_2 - number_1
# Show the results 
puts "Tada! The final number is #{final_number}! It is always #{final_number}!"