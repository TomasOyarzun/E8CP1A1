#Crear un método que lea el archivo, lo abra y devuelva la cantidad de líneas que posee.
def count_lines(filename)
	File.open(filename, 'r'){ |file| file.readlines.count }
end
 
puts count_lines('peliculas.txt')