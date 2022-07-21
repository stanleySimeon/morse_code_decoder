# decode a morse code message

def decode_characters(morseCode)
    morse_code_hash = {
        ".-" => "A",
        "-..." => "B",
        "-.-." => "C",
        "-.." => "D",
        "." => "E",
        "..-." => "F",
        "--." => "G",
        "...." => "H",
        ".." => "I",
        ".---" => "J",
        "-.-" => "K",
        ".-.." => "L",
        "--" => "M",
        "-." => "N",
        "---" => "O",
        ".--." => "P",
        "--.-" => "Q",
        ".-." => "R",
        "..." => "S",
        "-" => "T",
        "..-" => "U",
        "...-" => "V",
        ".--" => "W",
        "-..-" => "X",
        "-.--" => "Y",
        "--.." => "Z",
}
morse_code_hash[morseCode]
end

# decode a word morse code message
def decode_word(morse_word)
    morse_word.split(" ")
    .map { 
        |morse_character| decode_characters(morse_character) 
    }
    .join("")
end

# decode a sentence morse code message
def decode_sentence(morse_sentence)
    morse_sentence.split("  ")
    .map { 
        |morse_word| decode_word(morse_word) 
    }
    .join(" ")
end

morse_code_message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
puts decode_sentence(morse_code_message)

puts "Enter a morse code message:"
new_morse_code = gets.chomp
puts decode_sentence(new_morse_code)
