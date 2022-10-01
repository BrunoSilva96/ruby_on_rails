#If
x = 3 
if x > 2
   puts "x é maior que 2"
end

puts "==================="

#Unless / a menos que
unless x > 5
   puts "x não é maior que 5"
else
   puts "x é maior que 5"
end

puts "==================="
#case
print "Digite sua idade: "
idade = gets.chomp.to_i

case idade
when 0..2
   puts "Bebê"
when 3..12
   puts "Criança"
when 13..18
   puts "Adolescente"
else
   puts "Adulto"
end

#Estrutura condiconal ternária

sexo = "Masculino"
sexo == "Masculino" ? (puts "Masculino") : (puts "Feminino")
