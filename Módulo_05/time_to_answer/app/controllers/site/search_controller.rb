class Site::SearchController < SiteController
   def questions
      @questions = Question.search(params[:term], page: params[:page], per_page: 5)
   end

   def subject
      @questions = Question._search_subject_(params[:page], params[:subject_id])
   end
end



# Instalando o Elasticsearch
- sudo apt-get update
- sudo apt-get install default-jdk
- wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.3.0-amd64.deb
- wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.3.0-amd64.deb.sha512
- shasum -a 512 -c elasticsearch-7.3.0-amd64.deb.sha512 
- sudo dpkg -i elasticsearch-7.3.0-amd64.deb
- ps -p 1 para verificar qual cmd esta em execução 
  - sudo systemctl start elastcsearch.service
- E para testar se esta ativo rodar
  - curl 'http://localhost:9200'
  
# Full-text Search no Rails
- Adicionar a gem 'searchkick'
- Adicionar no Model questions o searchkick
- E Modificar em search_controller.rb
- **Olhar arquivos para verificar as mudanças**