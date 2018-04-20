def new_file(string1, string2)
  file = File.open('index.html', 'w')
  file.puts "<p> #{string1} </p>"
  file.puts "<p> #{string2} </p>"
  file.close
end

new_file('Compras', 'Sábado')

def add_list(array)

  file = File.open('index.html', 'a')
  file.puts '<ol>'
  array.each { |ele| file.puts "<li> #{ele} </li>" }
  file.puts '</ol>'
  return if array.count.zero?
  file.close
end

compras = %w[Queso Jamón Pan]

add_list(compras)

def add_color(color)
  file = File.open('index.html', 'r')
  lines = file.readlines.map(&:chomp)
  print lines
end

add_color('color')
