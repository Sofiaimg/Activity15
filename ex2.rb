#Se tiene un peliculas.txt con diversas películas:
#Crear un método que lea el archivo, lo abra y devuelva la cantidad de líneas que posee.


def lines_count(filename)
  file = File.open(filename, 'r')
  lines = file.readlines
  puts lines.count
  file.close
end

lines_count('peliculas.txt')
