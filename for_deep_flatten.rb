#Escribir un metodo que reduzca un array de arrays a un array simple sin usar métodos de la librería Enumerable. Ejemplo:
#Recibiendo [[1, 2, 3], [4, 5, 6]] debe retornar [1, 2, 3, 4, 5, 6]

def flatten(arr)
		result = []
	for element in arr do
		if element.is_a? Array
			temp = flatten(element)
			for recursive in temp do
				result.push(recursive)
			end
		else
		result.push(element)
		end
	end
	result
end

# NO MODIFICAR DE ESTA LINEA HACIA ABAJO

ejemplo_1 = [[1, 2, 3], [4, 5, 6]]
ejemplo_2 = ['a', [1, 2, 'b'], 7, 1, 8, 2, 2, 2]
ejemplo_3 = ['a', [1, [2, 'b']], [7, [1, [[8], 2]]], 2, 2]


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

result = flatten(ejemplo_3)
if(result.to_s == '["a", 1, 2, "b", 7, 1, 8, 2, 2, 2]')
  puts "Ejemplo 3 correcto"
else
  puts "Ejemplo 3 INCORRECTO. se recibio #{result||result.class} cuando se esperaba ['a', 1, 2, 'b', 7, 1, 8, 2, 2, 2]"
end

ejemplo_4 = ['a', [1, [2, 'b']], [7, [1, [[8, [88, 'palomo']], 2]]], 2, 2]
result = flatten(ejemplo_4)
if(result.to_s == '["a", 1, 2, "b", 7, 1, 8, 88, "palomo", 2, 2, 2]')
  puts "Ejemplo 4 correcto"
else
  puts "Ejemplo 4 INCORRECTO. se recibio #{result||result.class} cuando se esperaba ['a', 1, 2, 'b', 7, 1, 8, 88, 'palomo', 2, 2, 2]"
end
