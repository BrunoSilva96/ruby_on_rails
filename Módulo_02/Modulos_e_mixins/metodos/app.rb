require_relative 'pagamento'

include Pagamento

p "Digite a bandeira do cartão: "
bandeira_do_cartao = gets.chomp

p "Digite o número do cartão: "
numero_do_cartao = gets.chomp

p "Digite o valor da compra: "
valor_da_compra = gets.chomp

puts pagar(bandeira_do_cartao, numero_do_cartao, valor_da_compra)
puts Pagamento::pagar(bandeira_do_cartao, numero_do_cartaon valor_da_compra)
#Pode usar tanto chamando o module::método, quanto incluindo o module com o include e so chamando o método.