require 'matrix'

#Funcion para crear y rellenar las matrices
def crear_matriz(vec, dimension)
  filas = 1 
  columnas = 1
  num = 0
  while filas < dimension + 1
    while columnas < dimension + 1
      puts "Introduzca el elemento #{filas} #{columnas}"
      STDOUT.flush
      vec[num] = gets.chomp.to_i
      num += 1 
      columnas += 1
    end
    columnas = 1
    filas += 1
  end
end

def multiplicar(vecx, vecy, dimension)
   aux = []
   fila = 1
   elem = 1
   numa = 0
   numb = 0
   while fila < dimension+1
     while elem < dimension+1
        aux[numa] = vecy[numb]
        numb += dimension
        numa += 1
        elem += 1
     end
     numb = fila
     fila += 1
   end


end

#Main
vec1 = [] 
vec2 = []
vec3 = []

#Se recogen las dimensiones de las matrices
puts "Introduzca la dimensión de la matriz 1"
STDOUT.flush
dimension1 = gets.chomp.to_i
crear_matriz(vec1, dimension1)
puts "Introduzca la dimensión de la matriz 2"
STDOUT.flush
dimension2 = gets.chomp.to_i
crear_matriz(vec2, dimension2)


puts "Introduzca una opcion: 1.Sumar 2.Multiplicar"
STDOUT.flush
opcion = gets.chomp.to_i

if opcion==1
   if dimension1 == dimension2
      vec3 = vec1 + vec2
      mostrar(vec3, dimension1)
   else
      puts "Las dimensiones no son iguales"
   end
else
  if dimension1 == dimension2
     multiplicar(vec1, vec2)
     fila = 1
     num = 0
     while fila < dimension1 + 1
       vec3[num] = vec1[num
   
end






