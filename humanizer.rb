def humanizer(int)
  cont = " y "

  #Numbers from 1 to 29
  zero_to_29 = ["Cero","Uno","Dos","Tres","Cuatro","Cinco","Seis", "Siete","Ocho","Nueve","Diez","Once","Doce","Trece","Catorce","Quince","Dieciseis","Diecisiete","Dieciocho","Diecinueve","Veinte","Veintiuno","Veintidos","Veintitres","Veinticuatro","Veinticinco","Veintiseis","Veintisiete","Veintiocho","Veintinueve"]

  #Tens and hundreds from 30 to 900
  tens_and_hundreds = {30=>"Treinta", 40=>"Cuarenta", 50=>"Cincuenta", 60=>"Sesenta", 70=>"Setenta", 80=>"Ochenta", 90=> "Noventa", 100=>"Cien", 200=>"Doscientos", 300=>"Trescientos", 400=>"Cuatrocientos", 500=>"Quinientos", 600=>"Seiscientos", 700=>"Setecientos", 800=>"Ochocientos", 900=>"Novecientos"}


  #Get the total digits of the number
  numbers = int.to_s.split("")
  length = numbers.length

  #Single digit number
  if length == 1
    result = zero_to_29[int]
  elsif length == 2

    if int <= 29
      result = zero_to_29[int]
    else
      if int >=30 && int <= 100
        result = tens_and_hundreds[int]
      end

      if !result
        first_digit = false
        for digit in numbers
          #Checks if the actual digit is the first in the number
          if !first_digit
            first_digit = true
            digit = digit+"0"
            result = tens_and_hundreds[digit.to_i]
          else
            result += cont+zero_to_29[digit.to_i].downcase
          end
        end
      end
    end
    #Three digits number
  elsif length == 3
    #Take the first digit of the number and find it's noun
    #When taken out of the array, the digit is a String, so I convert it to Fixnum and multiply it by 100 to get it's hundreds
    first_digit = numbers[0]+"00"
    result = tens_and_hundreds[first_digit.to_i]

    #Take the last two digits of the number and use recursion to get their noun
    numbers = numbers.pop(2).join.to_i
    remaining_digits = humanizer(numbers)
    result += " "+remaining_digits.downcase
  end

    # Print the number's noun
    result
end

puts humanizer(98)
puts humanizer(10)
puts humanizer(945)