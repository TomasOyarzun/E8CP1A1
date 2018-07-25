#Methods
def cls
	system "clear"
end

def product_exist
	#Reading info.txt
	file = File.open('info.txt', 'r')
	products = file.readlines.map(&:chomp)
	file.close

	products.each do |product|
	 	puts product.split(', ')[0]
	end
end

def total_stock_store
	File.open('info.txt', 'r'){ |file| puts file.read}
end

def total_stock
	#Reading info.txt
	file = File.open('info.txt', 'r')
	products = file.readlines.map(&:chomp)
	file.close

	products.each do |product|
	 	a = product.split(', ')[1..3]
	 	b = a.inject(0){|acum,e| acum + e.to_i }
	 	puts "#{product.split(', ')[0]} tiene un total de: #{b}"
	end
end

def total_stock_product(word)
	#Reading info.txt
	file = File.open('info.txt', 'r')
	products = file.readlines.map(&:chomp)
	file.close

	products.each do |product|
		a = product.split(', ')[1..3]
	 	b = a.inject(0){|acum,e| acum + e.to_i }

	 	puts "La cantidad de stock de #{word} es: #{b}" if product.split(', ')[0] == word
	end
end


#Menus
def main_menu
	option = 0
	while option != 6 
		puts '--------------------------------------'
		puts 'Ingrese 1 para conocer la cantidad de productos existentes'
		puts 'Ingrese 2 para conocer la cantidad de stock total de un producto'
		puts 'Ingrese 3 para conocer los productos no registrados en bodega'
		puts 'Ingrese 4 para conocer el stock de productos menor al valor ingresado'
		puts 'Ingrese 5 para registrar un nuevo producto con su stock'
		puts 'Ingrese 6 para salir'
		option = gets.chomp.to_i
		cls
		case option
		when 1
			sub_menu
		when 2
			puts 'Ingrese nombre producto:'
			answ = gets.chomp
			total_stock_product(answ)
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
	option = 'a'
	while option.downcase != 'd'
		puts '--------------------------------------'
		puts 'a) Mostrar la existencia por productos.'
		puts 'b) Mostrar la existencia total por tienda.'
		puts 'c) Mostrar la existencia total en todas las tiendas.'
		puts 'd) Volver al menú principal.'
		option = gets.chomp
		cls
		case option
			when 'a'
				product_exist
			when 'b'
				total_stock_store
			when 'c'
				total_stock
			when 'd'
				break
			else
				puts 'Ingrese una opción valida'
		end
	end
end

#Start
main_menu


