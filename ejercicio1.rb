=begin 
Crear un método que reciba dos strings, 
este método creará un archivo index.html y pondrá como párrafo cada uno de los strings recibidos.
=end
def method1(string1, string2)
	file = File.open('index.html', 'w')
	file.puts "<p>#{string1}</p>"
	file.puts "<p>#{string2}</p>"
	nil
end

=begin
Crear un método similar al anterior, que además pueda recibir un arreglo. 
Si el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.
=end
def method2(string1, string2, array)
	file = File.open('index.html', 'w')
	file.puts "<p>#{string1}</p>"
	file.puts "<p>#{string2}</p>"
	if array.length != 0
		file.puts '<ol>'
		array.each{|v| file.puts "<li>#{v}</li>" }
		file.puts '</ol>'
	end
	nil
end

=begin
Crear un tercer método que además pueda recibir un color. Agregar color de fondo a los párrafos.
=end
def method3(string1, string2, array, color)
	file = File.open('index.html', 'w')
	file.puts "<p style='background-color:#{color}'>#{string1}</p>"
	file.puts "<p>#{string2}</p>"
	if array.length != 0
		file.puts '<ol>'
		array.each{|v| file.puts "<li>#{v}</li>" }
		file.puts '</ol>'
	end
	nil
end

#Para testeo
x = 'hola'
y = 'chao'
z = [1, 2, 3, 4]
c = 'black'
method3(x, y, z, c)
