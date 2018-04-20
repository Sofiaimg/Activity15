=begin
Se tiene un archivo con diversos productos, donde la primera columna indica el
nombre del producto y el resto de las columnas muestra el stock en distintas tiendas.

Donde NR significa no registrado.
Se pide:
Crear un menú con 5 opciones, se debe validar que la opción escogida sea 1, 2, 3, 4,
5 o 6.
Ejercicio 3: Contando palabras
Ejercicio 4: Ejercicio tipo prueba
La opción 1 permite conocer la cantidad de productos existentes. Al seleccionar esta
opción, se mostrará un submenú que permitirá:
a) Mostrar la existencia por productos.
b) Mostrar la existencia total por tienda.
d) Volver al menú principal.
Hint: Se debe validar que la opción ingresada sea válida.
La opción 2 permite que el usuario ingrese el nombre de un producto y el programa
responderá con la cantidad de stock total (suma en las bodegas) de ese producto.
La opción 3 muestra los productos no registrados en cada bodega.
La opción 4 permite conocer los productos con una existencia total menor a un
valor ingresado por el usuario.
c) Mostrar la existencia total en todas las tiendas.
La opción 5 permite registrar un nuevo producto con su respectivo stock en cada
bodega. (Hint: abrir el archivo como append).
Si el usuario ingresa la opción 6 el programa sale, si ingresa cualquier otra opción se
debe mostrar que la opción es inválida, y mostrar el menú nuevamente y la opción
de elegir.
=end
def show_stock_by_product
  lines = File.open('stock.rb', 'r').readlines
  print lines
  new_lines = []
  lines.each{ |line| new_lines.push(line.split(',').map(&:chomp))}

#suma
 new_lines.each do |details|
   name = details.shift
   sum = get_sum(details)
   puts "El Stock del producto #{name} es #{sum}"
 end
end

def get_sum(details)
  sum = 0
  details.each do |ele|
  unless ele == "NR"
  sum += ele
  end
  return sum
end

def submenu
  option = 0
    while option != 6
      puts "ingresa a muetsra existencias por producto"
      puts "ingresa b muestra existencia total por tienda"
      puts "ingresa c existencia en todas las tiendas"
      puts "ingresa d volver al menu principal"

      option = gets.chomp.downcase

        puts case option
        when "a"
          puts "existencias por producto"
        when "b"
          puts "existencias total por tienda"
        when "c"
          puts "existencias todas las tiendas"
        when "d"
          puts "volver al menu principal"
          inicio
        end
    end
end

def inicio
  option = 0
  while option != 6
    puts "ingresa 1 Q de productos existentes"
    puts "ingresa 2 stock por producto"
    puts "ingresa 3 productos NR"
    puts "ingresa 4 existencias menor a valor"
    puts "ingresa 5 registrar nuevo producto"
    puts "Ingresa 6 para salir"

    option = gets.chomp.to_i


        puts case option
        when 1
          submenu
        when 2
          puts "stock por producto"
        when 3
          puts "productos NR"
        when 4
          puts "existencias menor a valor"
        when 5
          puts "registrar nuevo producto"
        when 6
          exit(0)
        end
     end
   end
inicio
