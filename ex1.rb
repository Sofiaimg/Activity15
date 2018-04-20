#Crear un método que reciba dos strings, este método creará un archivo index.html y
#pondrá como párrafo cada uno de los strings recibidos.
#Crear un método similar al anterior, que además pueda recibir un arreglo. Si el
#arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada
#uno de los elementos.
#Crear un tercer método que además pueda recibir un color. Agregar color de fondo
#a los párrafos.
# 1
def create_index(p1, p2)
  p1 = "<p>#{p1}</p>"
  p2 = "<p>#{p2}</p>"
  file = File.open('index.html', 'w')
  file.puts p1, p2
  file.close
end
# 2
def add_list(list)
return if list.count.zero?
file = File.open('index.html', 'a')
file.puts '<ol>'
list.each { |ele| file.puts "<li>#{}</li>" }
file.puts '</ol>'
file.close
end

# 3
def add_color(color)
  back_color = "style = 'background_color:#{color}'"
    file = File.open('index.html', 'w+')
    lines = file.readlines
new_lines = lines.map do |line|
  if line[1] == 'p'
    line = '<p' + back_color + line.split('<p')[1]
  else
    line
  end
end
file.close
  file = File.open('index.html', 'w')
  file.puts new_lines
  file.close
end

create_index('kjfdvjb', 'jfkvñkjnd')
ordered_list = w%[2, 3, 4, 5]
add_list(ordered_list)
add_color("green")
