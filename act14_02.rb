#Arrays y strings

=begin Dado el array de nombres
1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método
.select.
2. Utilizando .map crear una arreglo con los nombres en minúscula.
3. Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
4. Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada
nombre.
5. Utilizando .map y .gsub eliminar las vocales de todos los nombres.
=end

#array dado
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

#array ressultados
x = []

#1 elem. mas de 5 caracteres length contabiliza extencion de cada elem. este caso letras
x = nombres.select {|i| i.length > 5}

puts "nombres mas de 5 letras"
print x
puts

# convertir texto en minuscula
x = nombres.map do |i|
  i.downcase
end

puts "convertidos en minuscula"
print x
puts

#3 crear arreyglo con nombres que empiecen con P
x = nombres.select {|i| i[0, 1] == "P"}

puts "nvo arreiglo de nombres con P"
print x
puts


#4 crea arreiglo elementos son numeros que refiere a cantidad de letras de nombres
x = nombres.map do |i|
  i.length
end

puts "nuevo array, cada elemntos es cant. letra de cada nombre"
print x
puts

#5 elimina volcales , map recorre, gsub es para reemplazar string
x = nombres.map do |i|
  i.gsub(/[aeiou]/, '') 
end

puts "nombres con vocales eliminadas"
print x
puts