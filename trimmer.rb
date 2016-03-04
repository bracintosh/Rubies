def trimmer(str)
sentences = str.split(".")

sentences.map do |w|
  ascii = w.ord

  while ascii == 32
    w = w[1..w.length]
    ascii = w.ord
  end

  lowercase = ascii >= 96 && ascii <= 122

  if lowercase
    ascii = ascii - 32
    cap = ascii.chr
    w = w[1..w.length]
    w = cap+w+". "
  else
    w+". "
  end

end.join("")

end

puts trimmer("yo tenia una camisa.                34Such spaces, such wow.    put on my black cape and look like Blackula")