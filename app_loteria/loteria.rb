class Lottery
  def generator
    @num_array = []

    while @num_array.length < 15
      random_number = rand(1..25)
      @num_array.push(random_number) unless @num_array.include?(random_number)
    end
  end

  def sort_numbers
    @num_array = @num_array.sort
  end

  def print_values
    @num_array.each do |nums|
      puts nums
    end
  end
end

generate = Lottery.new

generate.generator
generate.sort_numbers
generate.print_values
