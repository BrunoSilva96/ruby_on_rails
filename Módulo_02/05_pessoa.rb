#Parametro e Initialize
class Pessoa#Classe
   def initialize(cont = 5)#Método especial, ele aciona antes de qualquer outro método(construtor)
      cont.times do |i|
         p "Contando....#{i}"
      end
   end
   def falar(nome = "pessoal")#Método
      "Olá, #{nome}!"
   end

   def falar2(texto = "Olá, pessoal")#Método
      texto
   end

   def falar3(texto = "Olá!", texto2 = "Hello!")#Método
      "#{texto} - #{texto2}"
   end
end

pessoa = Pessoa.new
p pessoa.falar("Bruno Silva")