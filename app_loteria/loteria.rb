class Lottery
  def generator
    @num_array = []
    
    while @num_array.length < 15
      random_number = rand(1..25)
      self.ordenate
      if !self.verify_number(random_number)
        @num_array.push(random_number)
      end
    end
  end
  
  def ordenate
    @num_array = @num_array.sort #Fazer pela lógica
  end

  def verify_number(number)
    start_array = 0
    end_array = @num_array.length - 1

    while start_array <= end_array
      mid_array = (start_array + end_array) / 2

      if @num_array[mid_array] == number
        return true
      end

      if @num_array[mid_array] < number
        start_array = mid_array + 1
      end

      if @num_array[mid_array] > number                     
        end_array = mid_array - 1                   
      end
    end
    return false
  end

  def print_values
    @num_array.each do |num|
      puts num
    end
  end
end


generate = Lottery.new

generate.generator
generate.print_values