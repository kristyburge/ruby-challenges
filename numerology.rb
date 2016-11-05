# Ask user for input
puts "What is your birthdate? Use the format MMDDYYYY for accurate results"

# Store user input in the birthdate variable MMDDYYYY
birthdate = gets

# Convert the birthdate string with \n into an array by removing the new line
bday_array = birthdate.chomp.chars

#Now convert array of strings to integers and add them together
#Store in a variable called number
number = bday_array[0].to_i + bday_array[1].to_i + bday_array[2].to_i + bday_array[3].to_i + bday_array[4].to_i + bday_array[5].to_i + bday_array[6].to_i + bday_array[7].to_i

# Use an IF statement to check if the result is 2 digits and needs to be reduced down between 1-9
if (number > 9) then
    new_num = number.to_s.chars
    number = new_num[0].to_i + new_num[1].to_i
end
    
# Print Personal Numerology Results
case number
when 1
    puts "\nYour numerology number is #{number}. \nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the sun."
when 2
    puts "\nYour numerology number is #{number}. \nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3
    puts "\nYour numerology number is #{number}. \nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4
    puts "\nYour numerology number is #{number}. \nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5
    puts "\nYour numerology number is #{number}. \nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6
    puts "\nYour numerology number is #{number}. \nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7
    puts "\nYour numerology number is #{number}. \nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8
    puts "\nYour numerology number is #{number}. \nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9
    puts "\nYour numerology number is #{number}. \nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
else
    puts "You got #{number}. Something is wrong."
end