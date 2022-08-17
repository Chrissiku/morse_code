
    @dictionary = {
    "a" => ".-",
    "b" => "-...",
    "c" => "-.-.",
    "d" => "-..",
    "e" => ".",
    "f" => "..-.",
    "g" => "--.",
    "h" => "....",
    "i" => "..",
    "j" => ".---",
    "k" => "-.-",
    "l" => ".-..",
    "m" => "--",
    "n" => "-.",
    "o" => "---",
    "p" => ".--.",
    "q" => "--.-",
    "r" => ".-.",
    "s" => "...",
    "t" => "-",
    "u" => "..-",
    "v" => "...-",
    "w" => ".--",
    "x" => "-..-",
    "y" => "-.--",
    "z" => "--..",
    "1" => ".----",
    "2" => "..---",
    "3" => "...--",
    "4" => "....-",
    "5" => ".....",
    "6" => "-....",
    "7" => "--...",
    "8" => "---..",
    "9" => "----.",  
    "0" => "-----",
    " " => " "
    }

  def decode_char(string)
      return (@dictionary.key(string)).upcase()
  end

puts decode_char('--')

def decode_word(str)
  splitStr = str.split
  word = ""
  splitStr.each do |char|
    word.concat(decode_char(char))
  end
  return word.upcase()
end

puts decode_word("-- -.--")

def decode_message(message)
  splitMessage = message.split("   ")
  result = ""
  splitMessage.each do |word|
    result.concat(decode_word(word))
    result.concat(" ") if word != splitMessage.last
  end
  return result.upcase()
end

puts decode_message("-- -.--   -. .- -- .")
puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

