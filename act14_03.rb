# Array de hashes
personas = [{nombre:'Juanita', edad: 20, comuna:'Santiago', genero:'Femenino'}, {nombre:'Pedro', edad: 30, comuna:'San Bernardo', genero:'Masculino'}]


def elimina(hash, nombre)
	if hash.keys.include?(nombre)
		hash.delete(nombre)
	end	
end

opcion = 0
while opcion !=10
		puts
		puts "Menu"
		puts " 1- Ingresar los datos de una persona" 
		puts " 2- Editar los datos de la persona" 
		puts " 3- Eliminar una persona" 
		puts " 4- Muestra la cantidad de personas ingresadas" 
		puts " 5- Muestra las comunas de todas las personas " 
		puts " 6- Lista personas entre 20 y 25 años de edad" 
		puts " 7- Suma total de  las edades de pers. ingresadas" 
		puts " 8- Promedio de todas las edades" 
		puts " 9- Listado de pers. agrupadas por genero" 
		puts " 10- salir " 
		puts "-----"
		puts "Ingrese el Nº de su opcion"

		opcion = gets.chomp.to_i

		case opcion
			when 1
				personas = []
				puts "Ingrese el nombre: "
				nombre = gets.chomp.to_s
				puts "Ingrese la edad: "
				edad = gets.chomp.to_i
				puts "Ingrese la comuna: "
				comuna = gets.chomp.to_s
				puts "Ingrese el género: "
				genero = gets.chomp.to_s
				
				pers = {nombre:nombre, edad:edad, comuna:comuna, género:genero }
				personas.push(pers)
				print personas

			when 2
				puts "Ingrese persona a modificar"
				nombre = gets.chomp.to_sym
				if personas.include?(nombre)
					puts "Ingrese la edad: "
					edad = gets.chomp.to_i
					puts "Ingrese la comuna: "
					comuna = gets.chomp.to_s
					puts "Ingrese el género: "
					genero = gets.chomp.to_s
					personas[nombre]=pers
				 puts personas
				else
				  puts "No existe un producto con el nombre ingresado"
				end
			when 3
				puts "Ingrese nombre a eliminar"
				nombre = gets.chomp.to_s
				if personas.keys.include?(nombre)
					personas.delete(nombre)
				end	
				else
					puts "No existe un producto con el nombre ingresado"
				end
			when 4
				puts "Total de personas #{personas.keys.count()}"
			when 5
				puts "comunas ingresadas"
					array = []
					personas.values.each { |x|  array.push(x[:comuna]) }
				print array 
			when 6
				puts "Listado rango edad 20-25 años"
					array = []
					personas.values.each { |x|  array.push x if x[:edad] >= 20 && x[:edad] >= 25}
					print array 
			when 7
				puts "Suma total de edades"
					suma = 0
					personas.values.each { |x|  suma += x[:edad]  }
					puts suma
			when 8
				puts "Promedio total de edades"
					suma = 0
					personas.values.each { |x|  suma += x[:edad]  }
					puts suma/personas.count
			when 9
					array_masc = []
					array_fem = []
					personas.each do |k,v|
						if v[:genero] == "masculino"
							array_masc.push(k)
						end	
						if v[:genero] == "femenino"
							array_fem.push(k)
						end	
			end	
				print array_masc
				print array_fem
				
			when 10
				# salir
			else
				puts "Opcion invalida"
			end
end