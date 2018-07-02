productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

productos.each { |producto, valor| puts "#{producto} = $#{valor}" }

productos['cereal'] = 2200

productos.each { |producto, valor| puts "#{producto} = $#{valor}" }

productos['bebida'] = 2000

productos.each { |producto, valor| puts "#{producto} = $#{valor}" }

array = productos.to_a

puts array

productos.delete('galletas')
