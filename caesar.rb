#take an input of text
# replace given letters with letter which is three letters after given letter in the alphabet (a-> d)
# step one: see if input is only alphanumeric. 
# if not, ask for a valid input. 
    # turn that given string into an array
    # with that array, force each element to be transposed three of the given letters index of it such that a becomes d 
    # all elements of disjointed array should be joined
    # print that new string
    Alphabet= ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]


def alphabetic_position(letter)
    Alphabet.index(letter)
end
def caesar(message)
    # encode = split into array then turn into ascii
        encoded = message.chars.map { |message_letter|
            letter_value = alphabetic_position(message_letter) 
            #if letter_value >=24 then subtract 23
            #if letter_value !>=24 then add three
            #ignore spaces
            if letter_value == nil 
             message_letter
            else 
                if letter_value >= 23
                (letter_value - 23)
                else
                (letter_value + 3) 
                end 
                Alphabet.fetch(letter_value)
            end
        }
    # output = letter value -> alphabet
    puts encoded
    output = encoded.join 
    return output
    # rejoin array and return
end
puts caesar("get me a cup of coffee")
string = "get me a cup of coffee"
string_after_operation ="jhw ph d fxs ri friihh"
