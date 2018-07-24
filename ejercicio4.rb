#Reading info.txt
file = File.open('info.txt', 'r')
products = file.readlines
file.close

def product_exist(file)
	a = file.map{ |elem| elem.split(',') }
	a.each{ |v| puts v.first }
end

def main_menu
	while option != 6 
		puts 'Ingrese 1 para conocer la cantidad de productos existentes'
		puts 'Ingrese 2 para conocer la cantidad de stock total'
		puts 'Ingrese 3 para conocer los productos no registrados en bodega'
		puts 'Ingrese 4 para conocer el stock de productos menor al valor ingresado'
		puts 'Ingrese 5 para registrar un nuevo producto con su stock'
		puts 'Ingrese 6 para salir'
		option = gets.chomp.to_i
		case option
		when 1
			sub_menu
		when 2
			total_stock
		when 3
			no_registered_products
		when 4
			scan_products
		when 5
			register_product
		when 6
			break puts 'Bye bye'
		else
			puts 'Ingrese una opción valida'
		end
	end
end

def sub_menu
	puts 'a) Mostrar la existencia por productos.'
	puts 'b) Mostrar la existencia total por tienda.'
	puts 'c) Mostrar la existencia total en todas las tiendas.'
	puts 'd) Volver al menú principal.'
	option = gets.chomp
	case option
		when 'a'
			product_exist(products)
		when 'b'
			total_stock(products)
		when 'c'
			total_stock_store
		when 'd'
			main_menu
		else
			puts 'Ingrese una opción valida'
			sub_menu
		end
end



	



