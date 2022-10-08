class Pessoa
   def initialize(nome_fornecido = "indigente")
      @nome = nome_fornecido
   end

   def imprimir_nome
      @nome
   end

   def falar
      "Olá, pessoal!"
   end
end

pessoa = Pessoa.new
p pessoa.imprimir_nome

pessoa2 = Pessoa.new("Bruno Silva")
p pessoa2.imprimir_nome