puts "Digite seu nome: "
nome = gets.chomp
puts "Seu nome é: " + nome

puts "======================"

puts "Com o inspect >> " + nome.inspect

puts "======================"

puts "Digite seu salário:  "
salario = gets.chomp.to_f#Transformamos em float
puts "Seu salário é: " + (salario * 1.10).to_s#Transformamos em string novamente para concatenar e imprimir