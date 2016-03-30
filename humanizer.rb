#Método que recibe un número y lo devuelve escrito en letras. Hasta ahora solo funciona hasta el 999.
CONT = " y "

def humanizer(int)

  #Números del 1 al 29
  zero_to_29 = ["Cero","Uno","Dos","Tres","Cuatro","Cinco","Seis", "Siete","Ocho","Nueve","Diez","Once","Doce","Trece","Catorce","Quince","Dieciseis","Diecisiete","Dieciocho","Diecinueve","Veinte","Veintiuno","Veintidos","Veintitres","Veinticuatro","Veinticinco","Veintiseis","Veintisiete","Veintiocho","Veintinueve"]

  #Decenas y centenas desde el 30 al 900
  tens_and_hundreds = {30=>"Treinta", 40=>"Cuarenta", 50=>"Cincuenta", 60=>"Sesenta", 70=>"Setenta", 80=>"Ochenta", 90=> "Noventa", 100=>"Cien", 200=>"Doscientos", 300=>"Trescientos", 400=>"Cuatrocientos", 500=>"Quinientos", 600=>"Seiscientos", 700=>"Setecientos", 800=>"Ochocientos", 900=>"Novecientos"}


  #Obtener el total de dígitos del número
  numbers = int.to_s.split("")
  digits = numbers.length

  #Número de un solo dígito
  if digits == 1
    result = zero_to_29[int]
  #Número de dos dígitos 
  elsif digits == 2

    if int <= 29
      result = zero_to_29[int]
    elsif int >=30 && int <= 100
      result = tens_and_hundreds[int]
    end

    if !result
      first_digit = false
      for digit in numbers
        #Verificar si el dígito actual es el primero del número
        if !first_digit
          first_digit = true
          digit = digit+"0"
          result = tens_and_hundreds[digit.to_i]
        else
          result += CONT+zero_to_29[digit.to_i].downcase
        end
      end
    end
  #Número de tres dígitos
  elsif digits == 3
    #Tomar el primer dígito del número y obtener su palabra
    first_digit = numbers[0]+"00"
    result = tens_and_hundreds[first_digit.to_i]
    #Tomar los dos dígitos restantes del número y usar la recursividad para obtenerlos en palabras
    numbers = numbers.pop(2).join.to_i
    remaining_digits = humanizer(numbers)
    result += " "+remaining_digits.downcase
  end
    #Imprimir el número en palabras en español*
    result
end

puts humanizer(98)
puts humanizer(10)
puts humanizer(945)
puts humanizer(742)