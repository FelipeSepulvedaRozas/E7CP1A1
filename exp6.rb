restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
soloKeys =[]
soloValor = []
 def promedio (hash)
 	suma = 0
 	hash.each do |keys, value|
 		suma += value
 	end 
 	puts  (suma.to_f/hash.length)
 end

def keys(hash,key)
	hash.each do |keys,values|	
	key.push("#{hash.key(values)}")	
	end

	puts key
end

def valor(hash,valor)
	hash.each do |keys,values|	
	valor.push("#{hash[keys]}")	
	end

	puts valor
end

def masIVA(hash)
	hash.each do |keys, values|	
		hash[keys] = values*1.19
	end
	
	puts hash
end

def descuento(hash)

	hash.each do |keys,values|
		if hash.key(values).include?(" ")
			hash[keys]= values.to_f*0.8
		end
	end

	puts hash
end

 puts "El mas caro es: #{restaurant_menu.key(restaurant_menu.values.max)}"

 puts "El mas barato es: #{restaurant_menu.key(restaurant_menu.values.min)}"

 promedio(restaurant_menu)
 keys(restaurant_menu,soloKeys)
 valor(restaurant_menu,soloValor)
 masIVA(restaurant_menu)
descuento(restaurant_menu)