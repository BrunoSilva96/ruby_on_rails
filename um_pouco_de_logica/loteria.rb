class Lottery
  def generator
    @num_array = []
    
    while @num_array.length < 15
      random_number = rand(1..25)
      self.to_sort
      if !self.verify_number(random_number)
        @num_array.push(random_number)
      end
      self.to_sort#Pequena gambiarra para que o sorte rode mais uma ultima vez e deixe os números em ordem
    end
  end
  
  def to_sort
    index = 0
    while index <= @num_array.length#Enquanto o index for menor que o array o while vai executar
      (@num_array.length - 1).times do |i|#Age como o for
        if @num_array[i] > @num_array[i+1]#Se o numerona posição[i] for menor que a posição[i+1]
          auxiliar = @num_array[i]#Então variavel auxiliar vai receber a posição[i]
          @num_array[i] = @num_array[i+1]#A posição[i] recebe posição[i+1](Já que é menor que a posição[i])
          @num_array[i + 1] = auxiliar#A posição[i+1](Que é maior que posição[i]) vai receber o auxiliar
          #O auxiliar guarda o maior número para depois sobrepor a posição[i+1]
          #O código pode ser rodado com uma sintaxe mais simples
          #@num_array[i], @num_array[i+1] = @num_array[i+1], @num_array[i]
        end
      end
      index += 1
  end

  def verify_number(number)
    start_array = 0#Início do array
    end_array = @num_array.length - 1#Fim do array

    while start_array <= end_array#While vai executar enquanto o inicio for menor ou igual ao fim
      mid_array = (start_array + end_array) / 2#Meio do array é o inicio + fim / 2

      if @num_array[mid_array] == number#Se o número encontrado no array for igual ao parametro que passamos, então a resposta é true e descartamos esse numero
        return true
      end

      if @num_array[mid_array] < number#Se o meio do array for menor do que o número, o inicio do array passa a ser o meio do array + 1
        start_array = mid_array + 1
      end

      if @num_array[mid_array] > number#Se o meio do array for maior do que o número, o inicio do array passa a ser o meio do array -1                     
        end_array = mid_array - 1                   
      end
    end
    return false#E se não encontrarmos o número dentro do array, ele não existe, então retornamos um false e damos um push no número, assim introduzindo ele no array, já que verificamos que nao existe outro igual a ele dentro do array.
  end

  def print_values
    @num_array.each do |num|
      puts num
    end
  end
end
end

generate = Lottery.new

generate.generator
generate.print_values