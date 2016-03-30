#Cristian asked me to make a program that prints the numbers from 1 to 999, but while the total digits of the number are less than 3, it should be printed with a certain amount of zeroes in front. gg izzi to be honest. There are better ways to do it but I made this solution in less than 5 minutes, which is something :)

def sequence
  number = 1

  while number <= 999
    if number < 10
      puts "#{"00"+number.to_s}"
    end

    if number >= 10 && number <= 99
      puts "#{"0"+number.to_s}"
    end

    if number >= 100 && number <= 999
      puts "#{number}"
    end

    number += 1
  end

end

sequence