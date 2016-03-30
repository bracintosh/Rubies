#A man created chess for a king. As a reward he asked the king to give him a wheat grain for the first box of the chessboard, two for the second, four for the third, eight for the fourth and the numbers of grains for each box doubled the quantity the man wanted for the previous box. The king's mathematicians took more than a week to calculate the total grains of wheat the man wanted.

def wheat
box = 0
total = 0

  while box < 64
    total += 2**box
    box += 1
  end

  puts "The man asked the king a total of #{total} wheat grains as a reward for creating the chess."

end

puts wheat