def caesar_cipher(sentence,shift)
  puts "Please put a sentence that you want to encrypt"
  sentence = gets.chomp

  puts "Please the put the shift factor"
  shift = gets.chomp.to_i
  
  encrypted_sentence = ''

  sentence.split("").map do |letter|
    if letter.ord.between?(65,90)
      encrypted_sentence << (65 + (((letter.ord - 65) + shift) % 26)).ord
    elsif letter.ord.between?(97,122)
      encrypted_sentence << (97 + (((letter.ord - 97) + shift) % 26)).ord
    else
      encrypted_sentence << letter
    end
  end
  encrypted_sentence 
end

p caesar_cipher("What a string!", 5)


