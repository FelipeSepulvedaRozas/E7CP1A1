nventario = {"Notebooks": 4, "Pc Escritorio": 6, "Routers": 10, "Impresoras": 6}

def mensaje(hash)
	puts "INVENTARIO"
	puts "################################"
	puts hash
	puts "Ingrese 1 para agregar un productos"
	puts "Ingrese 2 para eliminar un productos"
	puts "Ingrese 3 para actualizar la informacion de un producto"
	puts "Ingrese 4 para ver la cantidad de stock actual"
	puts "Ingrese 5 para ver el producto con mayor stock"
	puts "Ingrese 6 para ver si el item existe en el inventario"
	puts "Ingrese 7 para salir"

end

def add_element(hash)
	puts "Ejemplo: Pendrives, 100"
	input =  gets.split(',').map {|ele| ele.strip}
	hash[input[0]].to_sym = input[1].to_i
	hash 
end

def delete_element(hash)
	print hash, "\n"
	puts "Ingrese el producto que desea eliminar"
	choice = gets.chomp.split.map(&:capitalize).join(' ')
	hash.delete(choice.to_sym) {|ele| puts "#{ele} no se encuentra en el inventario"}
	hash
end

def update_element(hash)
	print hash, "\n"
	puts "Ingrese el producto que desea eliminar"
	updated = gets.chomp.split.map(&:capitalize).join(' ')
	puts "ingrese el stock"
	stock = gets
	hash[updated.to_sym] = stock.to_i
	hash
end

def sumary(hash)
	stock = hash.values.inject(0) {|sum, v| sum + v}
	puts "el inventario actual es de #{stock} numero de items"
end

def max(hash)
	print "El item con mayor cantidad en su inventario es: #{hash.key(hash.values.max)}"
end

def exist(hash)
	puts "Ingrese el producto que desea revisar"
	duda = gets.chomp.split.map(&:capitalize).join(' ').to_sym
	if hash.has_key?(duda)
		puts "El producto SI existe" 
	else
		puts "El producto NO existe"
	end
end

loop do |option|
	mensaje(inventario)
	option = gets.chomp
	
	puts case option.to_i
	when 1
		add_element(inventario)
	when 2
		delete_element(inventario)
	when 3
		update_element(inventario)
	when 4
		sumary(inventario)
	when 5
		max(inventario)
	when 6
		exist(inventario)
	when 7
		break
	else
		puts "La opcion ingresada no es valida"
	end
	break if option==7
end