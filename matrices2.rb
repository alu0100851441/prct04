require 'matrix'

@matriz1 = 1
@matriz2 = 2
@matrizr = nil
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

def sumar(dimension)
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
  i = 0
  j = 0
  aux = 0
  while i < dimension
     while j < dimension
       aux += @matriz1[i][j] * @matriz2[j][i]
       j += 1
     end
     @matrizr[i][j] = @matriz1[i][j] + @matriz2[i][j]
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

puts @matriz1[0]




