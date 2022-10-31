class WelcomeController < ApplicationController
  def index
    @meu_nome = params[:nome]#Variavel params é uma variavel global padrão do Rails
    #No navegador, usamos o  "&" para que possamos adicionar outra variavel no parametro da URL
    @curso = params[:curso]
  end
end
  