class Pessoa
   attr_accessor :nome, :email
end

class PessoaFisica < Pessoa
   attr_accessor :cpf

   def falar(texto)
      texto
   end
end

class PessoaJuridica < Pessoa
   attr_accessor :cnpj

   def pagar_fornecedor
      "Pagando fornecedor..."
   end
end 

pessoa1 = Pessoa.new

#setter
pessoa1.nome = "Bruno Silva"
pessoa1.email = "brunosilva@email.com"

#getter
p pessoa1.nome
p pessoa1.email

p "-------------------------------"


pessoa2 = PessoaFisica.new

#setter
pessoa2.nome = "Vinicius"
pessoa2.email = "vinicius@email.com"
pessoa2.cpf = "123.456.789.01"

#getter
p pessoa2.nome
p pessoa2.email
p pessoa2.cpf


p pessoa2.falar("Hello!")

p "-------------------------------"


pessoa3 = PessoaJuridica.new

#setter
pessoa3.nome = "Yuri"
pessoa3.email = "yuri@email.com"
pessoa3.cnpj = "123.456.789.010.323-01"

p pessoa3.nome
p pessoa3.email
p pessoa3.cnpj

p pessoa3.pagar_fornecedor