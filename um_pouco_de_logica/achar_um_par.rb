#Método que consome muita memória, mas é bem rapido
numbers = [4, -18, 5, 12, 3, 8, 13, 85, 96, 22, 17]

p "Digite um número até 130"
n = gets.chomp.to_i

def aProcuraDeDoisNumeros(arr, n)
   hash = {}
   i = 0
   while(i < arr.length)
      if hash[arr[i]]
         p "True"
      else
         hash[n - arr[i]] = true
      end
      i += 1
   end

   return p "False"
end

aProcuraDeDoisNumeros(numbers, n)

=begin
# ocupa pouca memória, mas demora um pouco mais que o método acima.
E o array precisa está ordenado, depdende da situação pode usar um dos dois
   num = array.length - 1
   aux = array
   j = 0
   i = 0
   
   resultado = aux[i] + aux[num]

   while (resultado != n)
      if resultado < n && aux[i] != aux [num]
         resultado = aux[i] + aux[num]
         p "True"
      elsif resultado > n && aux[i] != aux[num]
         num -= 1
         resultado = aux[i] + aux[num - j]
         p "True"
      else
         p "False"
   end




   Pior método para se usar, demora mais e usa mais memoria que os outros.
   i = 0
   j = 0

   if (n <= aux[num-1])
      for i in numbers
         for j in numbers
            resultado = aux[i] + aux[j+1]
            if aux[i] != aux[i+1] && resultado == n
               p "True"
            end
         end
      end
   else
      for j in numbers
         resultado = aux[num-1] + aux[j]
         if aux[i] != aux[j + 1] && resultado == n
            p "True"
         end
      end
   end 
   
=end