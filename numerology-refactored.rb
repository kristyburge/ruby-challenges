#2 Determine birth path number inside a method and return the value before closing the method!!

def get_birth_path_number (birthdate)
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
        
    return number
end
    
    
#4 Create a method that determines what message to display taking the birth path number as an argument. Return the message.
def results (birth_path_number)
    # Print Personal Numerology Results
    case birth_path_number
    when 1
        message = "\nYour numerology number is #{birth_path_number}. \nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the sun."
    when 2
        message = "\nYour numerology number is #{birth_path_number}. \nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3
        message = "\nYour numerology number is #{birth_path_number}. \nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4
        message = "\nYour numerology number is #{birth_path_number}. \nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when 5
        message = "\nYour numerology number is #{birth_path_number}. \nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
    when 6
        message = "\nYour numerology number is #{birth_path_number}. \nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7
        message = "\nYour numerology number is #{birth_path_number}. \nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when 8
        message = "\nYour numerology number is #{birth_path_number}. \nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    when 9
        message = "\nYour numerology number is #{birth_path_number}. \nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    else
        message = "You got #{birth_path_number}. Something is wrong."
    end
    
end
    
    
# 1 Ask user for input
puts "What is your birthdate? Use the format MMDDYYYY for accurate results"

# Store user input in the birthdate variable MMDDYYYY
birthdate = gets
    
#3 Assign return value from #2 to a new variable
birth_path_number = get_birth_path_number(birthdate)
    
#5 Get the correct message by running the method and assign to a new variable
my_message = results(birth_path_number)

# 6 Display the number and message to the user
puts my_message