#Escribir un metodo que reduzca un array de arrays a un array simple. Ejemplo:
#Recibiendo [[1, 2, 3], [4, 5, 6]] debe retornar [1, 2, 3, 4, 5, 6]

def flatten(arr)
		my_array = []
	for i in arr do
		if i.is_a? Array
			flatten(i)
			for e in i do
				my_array.push(e)
			end
		else
		my_array.push(i)
		end
	end
	my_array
end


# NO MODIFICAR DE ESTA LINEA HACIA ABAJO

ejemplo_1 = [[1, 2, 3], [4, 5, 6]]
ejemplo_2 = ['a', [1, 2, 'b'], 7, 1, 8, 2, 2, 2]

result = flatten(ejemplo_1)
if(result.to_s == '[1, 2, 3, 4, 5, 6]')
  puts "Ejemplo 1 correcto"
else
  puts "Ejemplo 1 INCORECTO. se recibio #{result||result.class} cuando se esperaba [1, 2, 3, 4, 5, 6]"
end

result = flatten(ejemplo_2)
if(result.to_s == '["a", 1, 2, "b", 7, 1, 8, 2, 2, 2]')
  puts "Ejemplo 2 correcto"
else
  puts "Ejemplo 2 INCORRECTO. se recibio #{result||result.class} cuando se esperaba ['a', 1, 2, 'b', 7, 1, 8, 2, 2, 2]"
end
