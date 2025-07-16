def caesar_cipher(string, shift_factor)
  string.chars.map do |s|
    char_code = s.ord

    if char_code.between?(65, 90) # uppercase A-Z
      shifted = ((char_code - 65 + shift_factor) % 26) + 65
      shifted.chr
    elsif char_code.between?(97, 122) # lowercase a-z
      shifted = ((char_code - 97 + shift_factor) % 26) + 97
      shifted.chr
    else
      s
    end
  end.join
end

puts caesar_cipher("What a string!", 5)
