#Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total
#de palabras. El método debe devolver este valor.

#Crear un método similar para que además reciba -como argumento- un string. En
#este caso el método debe contar únicamente las apariciones de ese string en el
#archivo


def words_count(filename)
  file = File.open(filename, 'r')
  lines = file.readlines
  file.close

  lines.each do |word|
    words = word.split(' ').map(&:chomp)
    puts words.count
  end
end

words_count('peliculas.txt')

def elemento(string)
  file = File.open(filename, 'r')
  lines = file.readlines
  file.close

  lines.each do |word|
    if word.include(string)
    puts words.count
  end
end
end
elemento('Galaxias')
