meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

h = Hash[meses.zip(ventas)]

invert = h.invert

puts invert[invert.keys.max]