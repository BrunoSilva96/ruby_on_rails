class Pessoa
   attr_accessor :nome

   # def initialize(nome = "teste")
     # @nome = nome
   # end

   # def set_nome=(nome)
   #   @nome = nome
   # end

   # def get_nome
   #   @nome
   # end
end

pessoa = Pessoa.new
pessoa.nome "Bruno Silva"#setter
p pessoa.nome #getter