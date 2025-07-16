def substrings(substring, dictionnary)
  result = {}
  dictionnary.each do |word|
    count = substring.upcase.scan(/(?=#{word.upcase})/).count
    result[word] = count if count > 0
  end

  result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)