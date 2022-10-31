x, y = 0, 1

#Retorna todos os numeros primos da fibo

def verificarPrimos(y)
   contador = 2
   while contador < y
      if(y%contador == 0)
         return false
      end
      contador +=1
   end
   return y != 1
end

15.times do
   if (verificarPrimos(y))
      p y
   end
   x, y = y, x + y
end

