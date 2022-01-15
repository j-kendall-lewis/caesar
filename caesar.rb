Alphabet = %w[a b c d e f g h i j k l m n o p q r s t u
              v w x y z]

def alphabetic_position(letter)
  Alphabet.index(letter)
end

def caesar(message)
  encoded = message.chars.map do |message_letter|
    letter_value = alphabetic_position(message_letter)
    if letter_value.nil?
      message_letter
    else
      if letter_value >= 23
        letter_value -= 23
      else
        letter_value += 3
      end
      Alphabet.fetch(letter_value)
    end
  end
  encoded.join
end

def test(input, expected)
  result = caesar(input)
  if result != expected
    puts "Test failed, actual value was '" + result + "'\nexpected '#{expected}'"
  else
    puts "Yay! test passed"
  end
end

test("xyzabc", "abcdef")
test("abc", "def")
test("go get me a coffee", "jr jhw ph d friihh")
