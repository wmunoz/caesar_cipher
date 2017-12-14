def caesar_cipher(string, shift_factor)
  string.split("").map { |char|
    if char =~ /[A-Za-z]/
      shifted = (((char.downcase.ord - 97 + shift_factor) % 26) + 97).chr
      encrypted = (char ==char.upcase ? shifted.upcase : shifted)
    else
      char
    end
  }.join("")
end

puts caesar_cipher("What a string!", 5)
