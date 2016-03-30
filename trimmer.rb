#This method receives an string of many sentences separated by periods and returns it without extra spaces, the first word of every sentence capitalized and a period at the end of all the sentences if needed.

def trimmer(str)
sentences = str.split(".")

sentences.map do |word|
  ascii = word.ord

  while ascii == 32
    word = word[1..word.length]
    ascii = word.ord
  end

  has_lowercase = ascii >= 97 && ascii <= 122

  if has_lowercase
    ascii = ascii - 32
    capital_letter = ascii.chr
    word = word[1..word.length]
    word = capital_letter+word+". "
  else
    word+". "
  end

end.join("")

end

puts trimmer("yo tenia una camisa.                34Such spaces, such wow.    put on my black cape and look like Blackula")