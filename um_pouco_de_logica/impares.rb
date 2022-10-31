x = gets.chomp.to_i
def buscaDosProximosSeisPrimos(x)
    cont = 2
    while cont < x
        if(x%cont == 0)
            return false
        end
        cont += 1
    end
    return x != 1
end
i = 0
while i < 6
    if(buscaDosProximosSeisPrimos(x))
        p x
        i+=1
    end
    x+=1
end


=begin
    Acha apenas os números impares
x = gets.chomp.to_i
i = 0
while i < 6
    if(x%2 != 0)
        puts x
        i += 1
    end
    x += 1
end

end=