def caesar_cipher(initial_text, shift_amount)
  alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w','x','y','z']
  cipher_text = ""
  initial_text.each_char do |character|
    if alphabet.include?(character.downcase)
      shifted_index = alphabet.index(character.downcase) + shift_amount
      cipher_text += character == character.upcase ? alphabet[shifted_index % alphabet.length].upcase : alphabet[shifted_index % alphabet.length]
    else
      cipher_text += character
    end
    
  end
  cipher_text
end

puts caesar_cipher("What a string!", 5)
