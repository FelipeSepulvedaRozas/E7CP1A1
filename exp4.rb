personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

h = Hash[personas.zip(edades)]

def imprimir(hash)
	hash.each {|key, value| puts "#{key} = #{value}"}
end

imprimir(h)