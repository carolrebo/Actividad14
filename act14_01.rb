#bloques en Arrays
=begin Dado el array
1. Utilizando map aumentar el valor de cada elemento del array en 1.
2. Utilizando map convertir todos los valores a float.
3. Utilizando map convertir todos los valores a string.
4. Utilizando reject descartar todos los elementos menores a 5 en el array.
5. Utilizando select descartar todos los elementos mayores a 5 en el array.
6. Utilizando inject obtener la suma de todos los elementos del array.
7. Utilizando group_by agrupar todos los números por paridad (si son pares, es un
grupos, si son impares es otro grupo).
8. Utilizando group_by agrupar todos los números mayores y menores que 6. 
=end

# array dado
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# nuevo array para resultados
b = []

#1 incrementa valor en 1 de cada elemento
b = a.map do |i|
  i += 1
end
puts "array incrementado:"
print b
puts

# 2 convertir en float osea con decimal
b = a.map do |i|
  i.to_f
end

puts "elementos en float:"
print b
puts

#3 calores en string(texto)
b = a.map do |i|
  i.to_s
end

puts "elementos en texto:"
print b
puts

#4 reject descarta menores a 5
b = a.reject {|i| i < 5}

puts "descarta menores a 5 con reject:"
print b
puts

#5 select
b = a.select {|i| i <= 5}

puts "descarta mayores a 5: con select"
print b
puts


#6 suma con inject
b = a.inject(0) {|sum, i| sum + i}

puts "suma de los elementos"
print b
puts

#7 agupar por pares-impares con group
b = a.group_by {|ele| ele.odd?}

puts "grupos par e impar"
print b
puts

#8 grupos menores que 6 y mayores que 6
b = a.group_by {|ele| ele > 6}

puts "menor y menor que 6"
print b
puts