#Crear un método que lea el archivo, lo abra y devuelva la cantidad de líneas que posee.
def count_lines(filename)
	file = File.open(filename, 'r')
	data = file.readlines
	file.close
	data.count
end

puts count_lines('peliculas.txt')