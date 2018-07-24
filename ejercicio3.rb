=begin
Crear un método similar para que además reciba -como argumento- un *string*. 
En este caso el método debe contar únicamente las apariciones de ese *string* en el archivo.
=end
def count_lines(filename, word)
	acum = 0
	file = File.open(filename, 'r')
	data = file.readlines.map{|e| e.chomp}
	file.close
	data.each{|e| acum += 1 if e.include?(word)}
	acum
end

puts count_lines('peliculas.txt', 'Galaxias')