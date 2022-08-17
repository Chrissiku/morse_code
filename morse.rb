@dictionary = {

  'a' => '.-',

  'b' => '-...',

  'c' => '-.-.',

  'd' => '-..',

  'e' => '.',

  'f' => '..-.',

  'g' => '--.',

  'h' => '....',

  'i' => '..',

  'j' => '.---',

  'k' => '-.-',

  'l' => '.-..',

  'm' => '--',

  'n' => '-.',

  'o' => '---',

  'p' => '.--.',

  'q' => '--.-',

  'r' => '.-.',

  's' => '...',

  't' => '-',

  'u' => '..-',

  'v' => '...-',

  'w' => '.--',

  'x' => '-..-',

  'y' => '-.--',

  'z' => '--..',

  '1' => '.----',

  '2' => '..---',

  '3' => '...--',

  '4' => '....-',

  '5' => '.....',

  '6' => '-....',

  '7' => '--...',

  '8' => '---..',

  '9' => '----.',

  '0' => '-----',

  ' ' => ' '

}

def decode_char(string)
  @dictionary.key(string).upcase
end

p decode_char('.-')

def decode_word(str)
  splitStr = str.split

  word = ''

  splitStr.each do |char|
    word.concat(decode_char(char))
  end

  word.upcase
end

p decode_word('-- -.--')

def decode_message(message)
  splitMessage = message.split('   ')

  result = ''

  splitMessage.each do |word|
    result.concat(decode_word(word))

    result.concat(' ') if word != splitMessage.last
  end

  result.upcase
end

p decode_message('-- -.--   -. .- -- .')

p decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
