require 'matrix'

@matriz1 = 1
@matriz2 = 2
@matrizr = []
#Funcion para crear y rellenar las matrices
def crear_matriz(n, dimension)
  m = []
  aux = []
  filas = 1 
  columnas = 1
  num = 0
  while filas < dimension + 1
    while columnas < dimension + 1
      puts "Introduzca el elemento #{filas} #{columnas}"
      STDOUT.flush
      aux[num] = gets.chomp.to_i
      num += 1 
      columnas += 1
    end
    m[filas-1] = aux
    num = 0 
    aux = []
    columnas = 1
    filas += 1
  end
  if n==1
     @matriz1 = m
  else
     @matriz2 = m
  end
end

def preparar_resultado(dimension)
  aux = []
  num = 0
  filas = 1 
  columnas = 1
  num = 0
  while filas < dimension + 1
    while columnas < dimension + 1
      aux[num] = 0
      num += 1 
      columnas += 1
    end
    @matrizr[filas-1] = aux
    num=0
        aux = []
    columnas = 1
    filas += 1
  end
end

def sumar(dimension)
  preparar_resultado(dimension)
  i = 0
  j = 0
  while i < dimension
     while j < dimension
       @matrizr[i][j] = @matriz1[i][j] + @matriz2[i][j]
       j += 1
     end
     i += 1
     j = 0
  end
end

def multiplicar(dimension)
  preparar_resultado(dimension)
  i = 0
  j = 0
  c = 0
  aux = 0
  while i < dimension
     while j < dimension
       while c < dimension
         aux += @matriz1[i][c] * @matriz2[c][j]
         c += 1
       end
       c = 0
       @matrizr[i][j] = aux
       aux = 0
       j += 1
     end
     j = 0
     i += 1
  end 
end

def mostrar(matriz, dimension)
  i = 0
  j = 0
  while i < dimension
     while j < dimension
       printf("%d ", matriz[i][j])
       j += 1
     end
     puts ""
     j = 0
     i += 1
  end 

end 
puts "Introduzca la dimensión de la matriz 1"
STDOUT.flush
dimension1 = gets.chomp.to_i
crear_matriz(@matriz1, dimension1)
puts "Introduzca la dimensión de la matriz 2"
STDOUT.flush
dimension2 = gets.chomp.to_i
crear_matriz(@matriz2, dimension2)

puts "Introduzca una opcion: 1.Sumar 2.Multiplicar"
STDOUT.flush
opcion = gets.chomp.to_i

if opcion==1
   if dimension1 == dimension2
      sumar(dimension1)
      mostrar(@matrizr, dimension1)
   else
      puts "Las dimensiones no son iguales"
   end
else
  if dimension1 == dimension2
     multiplicar(dimension1)
     mostrar(@matrizr, dimension1)
  else
     puts "Las dimensiones no son iguales"
  end 
end


