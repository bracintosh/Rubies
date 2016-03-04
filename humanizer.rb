def humanizer(int)
  space = " "
  cont = " y "

  #Numbers from 1 to 29
  zero_to_29 = ["Cero","Uno","Dos","Tres","Cuatro","Cinco","Seis", "Siete","Ocho","Nueve","Diez","Once","Doce","Trece","Catorce","Quince","Dieciseis","Diecisiete","Dieciocho","Diecinueve","Veinte","Veintiuno","Veintidos","Veintitres","Veinticuatro","Veinticinco","Veintiseis","Veintisiete","Veintiocho","Veintinueve"]

  #Tens and hundreds from 30 to 900
  my_hash = {30=>"Treinta", 40=>"Cuarenta", 50=>"Cincuenta", 60=>"Sesenta", 70=>"Setenta", 80=>"Ochenta", 90=> "Noventa", 100=>"Cien", 200=>"Doscientos", 300=>"Trescientos", 400=>"Cuatrocientos", 500=>"Quinientos", 600=>"Seiscientos", 700=>"Setecientos", 800=>"Ochocientos", 900=>"Novecientos"}

  int = int.to_s
  length = int.length

  #Get the total digits of the number
  numbers = int.split("")
  length = numbers.length

  #Single digit number
  if length == 1
    int = int.to_i
    int = zero_to_29[int]
  end

  #Two digits number
  if length == 2
    int = int.to_i

    if int <= 29
      int = zero_to_29[int]
    else
      if int >=30 && int <= 100
        int = my_hash[int]
      end

      if !int
        first_digit = false
        for digit in numbers
          #Checks if the actual digit is the first in the number
          if !first_digit
            first_digit = true
            digit = digit.to_i * 10
            int = my_hash[digit]
          else
            digit = digit.to_i
            int += cont+zero_to_29[digit]
          end
        end
      end
    end
  end

  #Three digits number
  if length == 3
    #Take the first digit of the number and find it's noun
    #When taken out of the array, the digit is a String, so I convert it to Fixnum and multiply it by 100 to get it's hundreds
    first_digit = numbers[0].to_i*100
    int = my_hash[first_digit]

    #Take the last two digits of the number and use recursion to get their noun
    numbers = numbers[1..numbers.length-1].join("").to_i
    remaining_digits = humanizer(numbers).to_s
    int += space+remaining_digits
  end

    # Print the number's noun
    int
end

puts humanizer(98)
puts humanizer(10)
puts humanizer(928)