require_relative 'pagamento'

include Pagamento

pagamento = Pagamento::MasterCard.new
p pagamento.pagando