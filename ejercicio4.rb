option = 0
while option != 6
	puts 'Ingrese 1 para conocer la cantidad de productos existentes'
	puts 'Ingrese 2 para conocer la cantidad de stock total'
	puts 'Ingrese 3 para conocer los productos no registrados en bodega'
	puts 'Ingrese 4 para conocer el stock de productos menor al valor ingresado'
	puts 'Ingrese 5 para registrar un nuevo producto con su stock'
	puts 'Ingrese 6 para salir'
	option = gets.chomp.to_i
end

