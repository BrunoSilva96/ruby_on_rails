# ruby_on_rails
Estudos de Ruby on Rails pelo curso de Jackson Pires, plataforma Udemy.

# Porque usar Ruby on Rails
- O processo de programar é muito mais rápido do que em outros frameworks e linguagens...
- As convenções Rails também tornam fácil para os desenvolvedores se moverem entre diferentes projetos, onde cada um segue as mesmas estruturas e práticas de codificação....
- Rails é bom para Rapid Application Development(RAD), como framework é fácil incluir mudanças...
- Código ruby é muito legível e auto-documentado. Isso melhora a produtividade pois escreve-se menos documentação separada do projeto e torna fácil outros desenvolvedores pegarem projetos existentes...
- Rails tem sido desenvolvido com um grande foco em testes e possui bons frameworks de testes...
- Rails e a grande maioria das bibliotecas são open source, diferentemente de outros frameworks comerciais, nçao existem custos de licença envolvidos...
- Usa padrão de arquitetura MVC. (Model, View, Controller)

# Ruby
- É uma linguagem de programação interpretada multiparadigma, dinâmica, open source com foco na simplicidade e na produtividade. Tem uma sintaxe elegante de leitura natural e fácil escrita.

# Gems
- Bibliotecas Reutilizáveis
- Gems são bibliotecas ou conjuntos de arquivos Ruby reutilizáveis, etiquetados com um nome e uma versão.

# Ruby on Rails
- O Framework
- Um framework (ou arcabouço), em desenvolvimento de software, é uma abstração que une códigos comuns entre vários projetos de software provendo uma funcionalidade genérica. Um framework pode atingir uma funcionalidade específica, por configuração, durante a programação de uma aplicação.
- Rails é um framework de desenvolvimento de aplicações Web escrito na linguagem Ruby. Ele foi projetado para tornar a programação Web fácil ao tempo que faz suposições sobre o que o programador precisa para começar... Isso permite escrever menos código enquanto faz mais do que em outras linguagens e frameworks. Desenvolvedores mais experientes também reportam que isso torna o desenvolvimento web mais divertido.
- Ruby é um software opinativo. Ele faz suposições da melhor forma de omo fazer coisas, e é projetado para o encorajar a seguir esse caminho e em alguns casos desencoraja alternativas.
- Se você aprender o "**The Rails Way**", você provavelmente descovrirá um tremendo aumento na produtividade.
- Se você persistir em trazer velhos hábitos de outras linguagens para o seu desenvolvimento Rails, e tentar usar padrões que você aprendeu de qualquer jeito, você pode ter uma experiência menos feliz.
- A filosofia Rails segue dois grandes principios:
  - **Não se repita** (Don't Repeat Yourself - **DRY**). DRY é um princípio de desenvolvimento de software que afirma que "Cada pedaço do conhecimento deve ter uma representação única, não ambígua e autoritária dentro de um sistema". Por não escrever a mesma informação repetidas vezes, seu código é mais sustentável, mais extensível, e possuirá menos bugs.
  - **Convenção sobre Configuração**(Convention Over Configuration - **CoC**): Rails tem opniões sobre a melhor maneira de padronizar e fazer muitas coisas em uma aplicação web, em vez de exigir que você especifique cada minúcia através de infinitos arquivos de configuração.

# Iniciando projeto em Rails
  comando -> rails new <nome_do_arquivo>
  
# Ruby e RVM
  O RVM é uma ferramenta de linha de comando que permite que você instale, gerencie e trabalhe facilmente com vários ambientes Ruby, desde interpretadores até conjuntos de gems.
  
  Comandos úteis do RVM
  - Lista todas as versões disponíveis no repositório
    - rvm list know
  - Atualiza a lista
    - rvm get head
  - Lista as versões instaladas localmente
    - rvm list
  - Instala uma versão escolhida
    - rvm install x.x.x
  - Instala uma versão escolhida e a torna padrão
    - rvm install x.x.x --default
  - Seleciona a versão que deseja usar
    - rvm use x.x.x

**Como executar um arquivo ruby?**
  - Após escrever o algoritimo em arquivo, rode no terminaç:
    - ruby nome_do_arquivo.rb

# Aulas módulo 2
  Ruby básico, todos estão no repositório ruby_poo, aqui teremos apenas uma revisão básica.
  
 **Vetores/Array**
  - Arrays podem ser aninhados:
    - vetor = [[11, 12, 13,], [21, 22, 23], [31, 32, 33]]
  - Podemos usar o **each** para iterar
    Exemplo
                      
                      vetor.each do |externo|
                        externo.each do |interno|
                          puts interno
                        end
                      end
 **Hashes**
  - Uma lista tipo chave => valor, a chave acessa o valor.
    - hash = {"x" => 15, "curso" => "rails" ou "x": 15, "curso": "rails"}
    - para acessar os elementos, use os []
      - hash["curso"]
 
 **Símbolos**
  - Símbolos são "strings imutáveis"
  - Símbolos são muito usados em situações onde precisamos de um indetificador pois eles garantem que seu uso não implicará na criação de novos objetos sempre que usados.
  
  **Classes vc Objetos**
   - As classes são a maneira que temos de informar como queremos que nosso objeto funcione!
   - Ao criarmos uma classe podemos especificar os métodos e os atributos que os objetos possuirão.
   - Os **métodos** são as **ações.**
   - Os **atributos** são as **características**
  **Initialize**
   - O método initialize um método especial que serve para indicarmos o que a classe deve fazer ao ser instanciada/inicializada.

  **Variáveis de Instaância**
  
  - Variáveis de instância são varipaveis que existem apenas na instância do objeto (em todo objeto), ou seja, cada objeto possui seus próprios valores em tais variáveis.
    
  - As variáveis de instância são procedidas de um @.
  
  **Accessors**
   - Os accessors servem como atalhos para declaração e atributos de uma classe. Veja o exemplo:
     - attr_acessor :nome
      
   - A simples declaração acima te dá um "getter" e um "setter" para **nome** na classe em questão
     - x = Pessoa.new
     - x.nome = "Bruno Silva"
     - x.nome
     
  **Herança entre Classes**
   - Imagine a seguinte situação:
     - Pessoa
     - Pessoa Física
     - Pessoa Jurídica
   - Você deve concordar que tanto a pessoa física como a jurídica "herdam" características e ações da "pessoa genérica". Por exemplo: Ambas possuem nome, endereço, etc...
   - No Ruby não existe herança múltipla, ou seja, não é possível herdar de várias classes ao mesmo tempo.
   
 **Módulos e Mixins**
   - Módulos Ruby são similares a classes em relação ao fato de que também armazenam uma coleção de métodos, constantes e outras definições de módulos e classes.
   - Entretanto, diferente das classes, você não pode criar objetos baseados em módulos nem pode criar módulos que herdam desse módulo; ao invés disso, você especifica qual funcionalidade de um módulo específico você deseja adicionar a uma classe ou a um objeto específico.
   - Módulos permanecem sozinhos; não há hierarquia de módulos ou herança. Módulos são um bom lugar para armazenar constantes em um local centralizado.
   - Primeiro eles agem como namespace, permitindo que você defina métodos cujos nomes não irão colidir com aqueles definidos em outras partes de um prgrama.
   - Em segundo lugar, permitem que você compartilhe funcionalidade entre classes - se uma classe "mistura"(mixes in) um módulo (isto é, o inclui), todos os métodos de instância do módulo se tornam disponíveis como se tivessem sido definidos na classe.

# Módulo 3
# Sites para buscar apoio nas documentações
  - Documentação Ruby
    - ruby-lang.org/pt/documentation/
  - Core
    - ruby-doc.org/core-x.x.x/ (número da versão)
  - Standard Library
    - ruby-soc.org/stdlib-x.x.x/
  - API Dock
    - apidock.com/ruby
  - Documentação Ruby on Rails
    - rubyonrails.org
  - Guides
    - guides,rubyonrails.org/
  - API
    - api.rubyonrails.org
  - API Dock
    - apidock.com/rails 

# Modelagem de Dados
  - A Modelagem de Dados é a criação de um modelo físico que explique a lógica por trás do sustema, com ele você é capaz de xplicar as caractepisticas de funcionamento e comportamento de um software.
  - A modelagem de dados é a base de criação do Banco de dados e parte essencial para a qualidade do software.
  
# MVC
  - Model, View e Controller
  - É um padrão de arquitetura de software que separa a representação da informação da interação do usuário.

# CRUD com Scaffold
  - CRUD?
    - **C**reate, **R**ead, **U**pdate, **D**elete
    - Operações básicas em um BD/tabela
  - Scaffold
    - O rails possui um **generator** chamado **scaffold** que permite criar um CRUD para uma determinada "tabela"
    - Para usar o generate para scaffold do Rails, rode o comando...
      - rails generate scaffold <Model> <campo:tipo> <campo:tipo>... 
  - Convenção
    - Um model é sempre escrito com a primeira letra maiúscula e no singular
      - Coin
    - Programe sempre em inglês
  - Tipos dos campos
    - api.rubyonrails.org/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html#method-i-add_column  
  - O comando anterior cria diversos arquivos que podem ser acompanhados pelo log, e dentre eles temos:
    - As views
    - O controller
    - O model
    - A migração (migration)
# Migrations
  - Quando flamos sobre Migrations precisamos falar sobre **Active Record** e **ORM**
  - Active Record é o **M** do MVC. O model.
  - É a camada de software responsável pela lógica de dados e negócio.
    - guides.rubyonrails.org/vx.x/active_record_basics.html
  - Não confunda o **padrão** Active Record com **framework** Active Record!
  - Nesse caso o framework é a implementação do padrão.
  - Em resumo, migrations são uma característica do Active Record (o framework) que permite você "escrever/especificar" as tabelas do BD usando a linguagem Ruby.
  - Dessa forma, vocÊ pode adicionar, modificar e removevr tabelas do BD sem utilizar SQL, além de ter sempre disponível toda a sequência de criação/alteração das tabelas envolvidas no projeto.
  - As migrações também controlam quais já foram ou não aplicadas o BD através do arquivo **db/schema.rb**
  - As migrations ficam localizadas em **db/migrate** em seu projeto.
  - Sempre que criamos migrações, precisamos fazê-las "migrar" para o BD, ou seja, aplicar as mudanças no BD.
  - Para isso, usamos algumas **tasks** predefinidas no Rails.
# ORM
  - ORM vem de **Object-Relational Mapping**
  - Em resumo, é uma técnica que mapeia os dados em um BD para classes/objetos na programação
# Rails Tasks
  - Para conhecer todas as tasks disponíveis rode
    - rails -T
  - Para foltrar tasks específicas use as iniciais do que procura, por exemplo:
    - rails -T db
  - As taks de banco de dados mais usadas são:
    - rails db:create  
      - cria o db
    - rails db:drop     
      - apaga o db
    - rails db:migrate 
      - executa as migrations
    - rails db:rollback
      - desfaz a última migration
   
# Ambientes do Rails
  - Por padrão, o Rails vem com 3 ambientes:
    - **Desenvolvimento**
    - **Teste**
    - **Produção**
  - Esses ambientes possibilitam ter configurações isoladas para cada ambiente.
  - A sua Gemfile é a forma mais simples de perceber isso.

# Fluxo MVC
  - Após criarmos nosso scaffold, ganhamos model, views e controller para "Coin" que foi o nome escolhido para nosso model. Observe no projeto
  - Daí, usamos o path **/coins** para acessar a página principal.
  - Isso ocorre por alguns motivos, dentre eles é que o controller foi gerado com o nome **coins_controller** (a convenção do Rails é ter controllers sempre arquivos com **???_controller.rb**)
  - Dentro do controller temos algumas actions (que são métodos) e dentre elas uma chamada **index** (que é a action "padrão")
  - Sendo assim, ao acessar **/coins** pelo navegador indica que vamos para o controller coins e por ser um acesso "padrão" a action index será invocada, disparando na sequência o arquivo da view com o mesmo nome, nesse caso **app/views/coins/index.html.erb**
  - Entender esse fluco inicial é de suma importância para o entendimento do Rails como um todo!!!

# Conhecendo novos generators
  - No rails, podemos conhecer novos generators simplesmente digitando um dos comandos abaixo
    - rails generate
    - rails g
  - Ao digitar o comando acima, o rails mostrará os generators disponiveis
  - Novos generators podem ser adicionados ao usarmos algumas gems (geralmente a documentação da gem indica isso)
  - Perceba que a conversação do Controlledr com o Model é opcional mas o Controller e a View sempre andam juntos.

# ERB
  - Embedded Ruby
  - Em resumo, é uma forma de você mesclar texto com código Ruby
  - A princípio você pode achar que uma simples "interpolação" com **#{}** resolveria, mas o ERB te dá a oportunidade de trabalhar com textos, HTML e expressões Ruby, ou seja, ele é muito mais completo e complexo doque uma simples interpolação
  - Sendo assim, diz-se que ERB é um sistema de templates para o Ruby.
  
# Helpers
  - Em resumo, helpers são métodos prontos que podem ser usados nas views
  - Esses métodos geralmente facilitam a vida do programador, fazendo com que menos código seja escrito para que se consiga o mesmo resultado
  - Vamos conhecer o helper **link_to**
  - Sabe-se que para colocar uma imagem em HTML usa-se por exemplo o ...
    - <img src="http://abc.com/imagem.jpg">
  - Você pode conseguir o resultado esperado para moedas, usando...
    - <img src="<%= coin.url_image %>"
    - O Rails permite que você crue seus próprios Helpers.
    - Para isso, existe uma pasta **app/helpers** que permite esse feito.
    - Perceba que essa pasta possui um arquivo **application_helper.rb** e outros arquivos com o nome das views ***_helper.rb**
    - Os nomes dos arquivos são para facilitar a orgasnização na hora de criar seus helpers
    - Todos os helpers criados serão disponibilizados para as views
    
# Rotas e Rest
  - HTTP
    - Protocolo padrão de acesso a internet
      - Verbos
        - **GET**: Usado quando digitamos diretamente a URL no navegador
        - **POST**: Usado por formulários da Web (dados enviados por 'debaixo dos panos')
  - REST
    - Representational State Transferer
    - Transferência de Estado Representacional
    - 2000 - Roy Filding
    - Idealizou que o HTTP deveria ter 1 verbo para cada uma das ações do CRUD
      - Foram adicionado dois verbos
        - **PUT**: Usado para atualizar um dado(Update)"Aqui temos o **PATCH** com mesma funconalidade com uma minima diferença"
        - **DELETE**: Usado para deletar um dado(Delete)
  - Veja o mapeamento das rotas do Rails
    - guides.rubyonrails.org/routing.html#crud-verbs-and-actions 
  - Rotas
    - O arquivo do Rails que faz o mapeamento das rotas é o **config/routes.rb**
    - Para fazermos o mapeamento padrão devemos usar a instrução **root to:**
      - root to: "welcome#index"
# Rails Console
  - O rails Console permite você interagir com sua aplicação a partir do terminal.
    - você pode rodar o rails console com a  opção **-e** passando o ambiente que quer usar
      - rails console -e production
    - Você pode também usar o rails console com a opção **--sandbox** para que nenhum dado seja alterado na aplicação
      - rails console -sandbox
# Model via Rails Console
  - No Rails console podemos trabalhar com qualquer model, bastndo para isso invocar o seu nome e usar métodos disponíveis a partir do Active Record.
    - Coin.first #retorna o primeiro elemento
    - Coin.last  #retorna o último elemento
    - Coin.all   #retorna todos os elementos
  - Perceba que om métodos anteriores first e last retornam um único elemento, já o método all retorna um **array** de elementos.
    - Coin.all #retorna todos os elementos
  - Ou seja, se for necessário, itere no array para conseguir cada um dos elementos
    - Coin.all.each do |coin|
    -   puts coin(por exemplo coin.description)
    - end 
  - Criando uma nova moeda
    - c = Coin.new
    - c.description = "Dash"
    - c.acronym = "DASH"
    - c.url_image = "http://"
    - c.save!
  - Outra forma de criar uma nova moeda.
    - c = Coin.create!(
    -   description: "Dash",
    -   acronym: "DASH",
    -   url_image: "http://"
    - )
# Identificando os "ambientes" no Rails
  - Como identificar
    - Rails c
      - Rails.env
      - ou
      - Rails.env.development? ou production?
 
# Variáveis de instância/sessão no Rails
  - As variáveis que começam com "@" são variáveis de instância quando usamos a Orientação a Objetos
                    
                    
                       class Pessoa
                         @nome = ""
                         def initialize(nome)
                           @nome = nome
                         end
                         def meu_nome
                           @nome
                         end
                       end
    
  - As variáveis que conversam entre o controller e as views são as variáveis de instância/sessão, sempre que quiser passar uma variável do controller pra uma view utilize um "@"
  - Pois bem, no caso do Rails é comum chamarmos as variáveis que começam com "@" de variáveis de sessão, visto que ssas variáveis terão um valor único para cada sessão do navegador que for aberta
  - Observe o **app/controllers/coins-controller.rb**
  - Para fazer um teste, nesse mesmo arquivo, nométodo **index** crie uma variável **@meu_nome = "Bruno"**
  - Agora na view **app/views/coins/index.html.erb** adicione a linha **<%= @meu_nome %>** e salve
  - Perceba que ao acessar a página, agora seu nome aparecera

# Query Params para Requests
  - Query Params são parâmetros enviados para o servidor através de URL
  - Para isso basta usar, logo após a URL padrão, o símbolo de interrogação **"?"** seguido de um par **chave=valor** para o que se quer passar para o servidor.
  - Vejamos o exemplo
    - localhost:3000/?nome=Bruno&curso=Ruby%20on%2Rails
    - acessando a URL acuma, podemos informar o parâmetro nome e curso para o servidor
    - No servidor, no controller, podemos acessá-lo através da variável global params.
      - params[:nome]
      - params[:curso]
    - Assim podemos usar o valor que foi passado (**Bruno**, **Ruby on Rails**) do jeito que quisermos.
    
# Partials
  - Partials permitem você renderizar uma view dentro de outra, ou seja, "reutilizar páginas/views"
  - Para isso cre um arquivo **_menu.html.erb**
  - Perceba o _ "underline" no início do nome do arquivo
  - Dentro dele coloque o conteúdo que está entre **<ul></ul>** da página **app/views/welcome/index.htmlerb**
  - Agora na página que removeu o <ul> use o helper **render** para indicar o nome da partial para carregar o menu
    - <%= render "menu" %>
    
# Layouts
  - Quando acessamos uma URL o Rail, no momento em que vai eviar a resposta para o usuário, renderiza um layout padrão (application) antes de renderizar a view que solicitamos.
  - A alteração feita em **layouts/application.html.erb** modifica todas as paginas linkadas a ela. 
  
# Fluxo MVC do CRUD(index)
  - Tudo começa com uma requisição (**request**) que o usuário faz
  - Essa requisiçãoé **roteada para um controller** e uma action
  - A action/controller é processada e o resultado (**response**) é enviado para o usuário
  - No caso da action **index**, todas as moedas no model **Coin** e enviadas através da variável de instância **@coins**
  - Ao chegar na view, a variável **@coins** é iterada e **processada junto ao HTML** para que sejam mostradas todas a moedas
  
# Fluxo MVC do CRUD (Show e Delete) + Filtros Rails
  - Filtros são métodos que podem rodar antes, depois e durante a ação de uma ação.
    - Show
      - No caso da action **show**,  a request é feita em conjunto com um ID que identifica qual a moeda que será mostrada.
      - Ao chegar no controller a moeda é pesquisada pelo ID e enviada para a view através da variável **@coin**
      - O Rails usa o conceito de filtros para buscar a moeda
      - Ao chegar na view, os dados da moeda são mesclados ao HTML
    - Delete 
      - No caso da action **delete**, a request também é feita em conjunto com um ID que identifica a moeda
      - Ao chegar no controller a moeda é pesquisada pelo ID e apagada e a requisição é redirecionada para a index novamente
  
# Fluxo MVC do CRUD (New e Create)
  - New
    - Para gerar uma nova moeda será usado inicialmente um path para um novo elemento **coins/new**
    - Ao acessar esse path. o controller **gera uma instância vazia do model Coin (Coin.new)**
    - Isso fará com que a variável **@coin** possua todos os campos (vazios) e permitirá que o Rails possa montar a view (**new.html.erb**) com um formulário para a nova moeda
  - Create
    - O formulário é montado com o helper **form_with**
    - Após preencher o formulário e clicar no botão para cadastrar a requisição do tipo **POST** será enviada ao controller que rodará a action create.
    - Lá a nova moeda é criada com os dados que foram enviados do formulário. Tudo através da variável **params**
    - Ao final a requisição é redirecionada para o **path show**, a fim de mostrar a moeda criada.

# Fluxo MVC do CRUD (Edit e Update)
  - Tudo começa com uma requisição (**request**) que o usuário faz para editar uma moeda
  - A rota nos leva até a action **edit** que encontra o usuário e envia através da variável **@coin** a moeda a ser editada para a view **edit.html.erb**.
  - Após editar a moeda na view o usuário clicará no botão para atualiá-la
  - O botão submeterá as alterações via **PATCH** para a action **update**, que localiza e atualiza a moeda com os dados recebidos via **params**
  - Após atualizar, o usuário é redirecionado para o **show**, que mostra os dados atuais da moeda.
  
# Permissão de parâmetros
  - A permissão de parâmetros é uma prática que visa informar quais dados que estão chegando ao controller são permitidos para serem manipulados
  - O Rails trata isso através do framework Action Controller e nos dá os métodos **require** e **permit** para usarmos com essa finalidade
  
# A task db:seed
  - Imagine a seguinte situação... Você começa a testar seu software cadastrando novas moedas com todos os dados etc.
  - Em dado momento, você precisa apagar todos os dados para corrigir algo no BD, ou mesmo, passa seu projeto para alguém sem os dados.
  - O esforço e tempo dedicados para se cadastrar tudo novamente pode ser muito grande, visto que na medida que o software cresce, também cresce a complexidade dos dados envolvidos, como por exemplo, primeiro deve-se cadastrar moedas, depois usuários, depois os dependentes dos usuários e assim vai
  - O Rails já possui um mecanismo para isso chamado "**db:seed"** que é a task que podemos invocar para fazer o preenchimento inicial dos dados.
 
# Criando RakeTasks
  - No Rails é possível criar suas próprias tasks de forma muito simples. Para isso rode:
    - rails g taks <nome do namespace> <nome da task>
    - Ex:
      - rails g task dev setup
    - Isso gerará a task **dev:setup** que pode ser usada para criarmos tudo necessário para a configuração do ambiente de desenvolvimento
      - Criar assim na pasta da task %x (rails db:drop db:create db:migrate db:seed)
  - Melhorando a Rake Task
    - Ao finalizar a aula anterior, percebemos o código recebeu muitas duplicações e isso não é legal
    - Sendo assim, vamos melhorar o nosso código
    - Primeiro, crie um método no arquivo dev.rake
      
                      def show_spinner(msg_start, msg_end = "Concluído!")
                        spinner = TTY::Spinner.new("[:spinner]  #{msg_start}")
                        spinner.auto_spin
                        yield
                        spinner.success("#{msg_end}")
                      end
                      
    - Depois basta chamar o método quando precisar...
      - show_spinner("Apagando banco de dados...") { %x(railsdb:drop) } #Se tiver mais de uma linha, colocamos o do...end

# Refatorando o seeds.rb(find_or_create_by)
  - Chegou a hora de melhorarmos também o **seeds.rb**
  - Exemplo 
                              coins.each do |coin|
                                 Coin.find_or_create_by!(coin)
                              end
                              
  - Antes de chamar o coins.each, fazer um hash contando o que queremos semear no banco de dados.
                      
# Modelando os dados da 2° parte do software
  - Todo model identifica unicamente seus registros através de um ID adicionado de forma automática e incremental
  - Rodou mais um scaffold com duas propriedades, Description e Acronym.
    - Após gerar o CRUD, faça a **migração** e ajuste o **linl** na págica principal da aplicação
    - Aproveite e ajuste também o **db:seed** para cadastrar os tipos de mineração
    
# Criando uma migration "standalone"
  - Vamos começar criando uma migração para o novo campo que sera adicionado na tabela de moedas(coins)
    - rails generate migration (nome da nova migração)
  - rails g migration AddMiningTypeToCoins mining_type:references
  - Essa migração vai adicionar um campo na tabela coins que fará um relacionamento/associação com a tabela de tipos de mineração
  - Perceba também que isso não cria nem altera nenhuma view
  - Após criar a migração você deve executar o rails db:Migrate para que as alterações sejam aplicadas ao banco de dados

# Associação "belongs_to"
  - Por convenção o Rails "exige" que o campo que vai se relacionar com a outra tabela tenha o mesmo nome no singular
  - Percebe-se que existe um **_id** no campo de referência, ficando **mining_type_id** para facilitar ainda mais o entendimento quando estamos programando. isso também é uma comvenção.
  - Agora que já resolvemos o "lado das tabelas" precisamos também deixar o model funcionando nesse formato
  - Para isso, adicione a associação ao model Coin **belongs_to :mining_type**
  - Isso quer dizer que os registros desse model Coin estarão associados (pertecendo a) a um registro do model Mining Type
    - Faça testes no **rails console**
      - c = Coin.first
      - m = MiningType.first
      - c.mining_type = m
  
# Associação "has_many"
  - Percebemos que tudo já está pronto em nossa tabela, faltando apenas indicar ao model Miningtype que queremos efetuar essa associação
  - Sendo assim, basta adicionar **has_many :coins** no model MiningType
  - Faça o teste no **rails console**
    - m = Miningtype.first
    - m.coins
    
# Ajustando a Task dev:add_coins
  - Agora que temos as associações mapeadas e funcionando em nossa aplicação, devemos ajustar a Task dev:add_coins, para isso complemente as moedas como o modelo abaixo
    - mining_type: MiningType.all.sample
    
# Métodos .map e o .pluck
  - Imagine que voc^tem um array e quer transformar ele em outro
    - Ex: [1,2,3,4,5] => [2,4,6,8,10]
  - Perceba que o segundo é baseado no primeiro
  - Poderíamos fazer uma iteração no primeiro para obter o segundo facilmente, mas, o ruby possui um método quepermite a iteração de uma coleção retrnando um novo array no final.
  - O método map funciona assim
    - [1,2,3,4,5].map do |i|
      - i*2
    - end
  - Ou se preferir
    - [1,2,3,4,5].map { |i| i * 2}
  - A saída será um novo array baseado no primeiro
    - [2,4,6,8,10]
   - Ainda sobre o método .map, podemos usá-lo em conjunto com hashes ou resultados no ActiveRecord, veja.
   - Coin.all.map { |coin| coin.description }
   - Uma forma de melhorar isso é usando o "ampersand"**&**
   - Coin.all.map(&:description)
   - Por fim, temos o método pluck, que funciona de forma parecida com o map, mas que reduz ainda mais o esforço na hora de obter elementos determinads resultados em formato de Array, a partir de resultados do ActiveRecord
   - Coin.all.pluck(:description)
   
# Helper "select"
  - Chegou a hora de ajustarmos a view para que seja possível selecionar o tipo de mineração, e para isso usaremos o helper **select**
    - Códigos no arquivo de coins, dentro da pasta controller
    - A primeira refatoração que podemos fazer na view é usar o pluck(no lugar do collect)
    - Mas só usando o pluck ainda estamos "ferindo o MVC", então vamos "migrar" esse código para o controller, mais especificamente criando um método privado chamado **set_mining_type_options**
                                      
                                      def set_mining_type_options
                                        @mining_type_options = MiningType.all.pluck(:description, :id)
                                      end
    
    - Em seguida, crie um filtro para executar o método no **new, create, edit, update**
      - before_action :set_mining_type_options, only: %i[new create edit update]
    - Agora basta usar o @mining_type_options como opção do select, e agora estamos seguindo corretamente a arquitetura MVC.

# Um pouco sobre arquivos YAML
  - "YAML é um formato de serialização (codificação de dados) de dados legíveis por humanos"
  - Veja esse exemplo
    - Endereço: Rua Abelardo, número 09, CEP: 00.000-000
    - Exemplo em YAML:
                
                                      endereço:
                                        rua: Abelardo
                                        numero: 09
                                        cep: 00.000-000
                                        
    - Ao usar o YAML precisamos ter atenção na indentação do que é escrito, ou seja, o YAML se baseia no espaçamento e quebra de linhas
    
 
# Ativando o i18n
  - **I18n** é a "sigla" para *internacionalization**
  - A primeira coisa que vamos fazer é, adicionar a gem **'rails-i18n'** no **Gemfile** e na sequência informar ao Rails quais localidades devem estar disponíveis na aplicação
  - Para isso, vamos na pasta **config/environments/(escolher onde queremos configurar o i18n)**
  - Após a configuração, você pode usar pelo menos 3 métodos para identificar qual a localidade que a aplicação está atualmente e quais as localidades disponíveis
    - I18n.avaliable_locales
    - I18n.locale
    - I18n.default_locale
  - Criação do helper para identificar o idioma que está sendo usado na aplicação
    - I18n.locale == :en ? "Estados Unidos" : "Portugês do Brasil"
  ### Usando o i18n
  - Em regras gerais, temos 2 métodos que podem fazer o uso do i18n
  - O método **I18n.t()** e o método **I18n.l()**
    - O primeiro vem de **translate**, onde informamos uma chave e recebemos uma tradução, baseada em arquivos YAML que ficam na pasta **config/locales.** 
  - Para um teste, coloque em sua view I18n.t('hello') isso mostrará como saída na view "Hello World"
  - Agora deixe como default pt-BR
  - Crie uma chave hello: "Olá Mundo!"
  - Inicie novamente a aplicação e veja agora que o texto mostrado é **"Olá Mundo!**
  - Por fim, podemos usar o método I18n.l(), que vem de "localize" e tem a função de deixar datas e horas no formato da localidade atual
  - Faça um teste na sua view I18n.l(Date.today) e veja que o resultado é a data já no formato brasileiro.

  ### i18n para Models
  - Para usar i18n nos models basta criar um arquivo **.yml** em **config/locales** com a seguinte estrutura:
    - 'pt-BR'
    -   activerecord:
    -     models:
    -       coin:
    -         one: Moeda
    -         other: Moedas
    -     attributes:
    -       coin: 
    -         description: Descrição
  - Após isso todos os **labels** dos formulários serão traduzidos de forma automática
  - Se quiser foçar uma tradução use...
    - Model.human_attribute_name(attribute)
    
#Cookies e Sessions
  - Stateless vs Stateful
  - Conexões HTTP são **stateless**, ou seja, **cada requisição é única** e o servidor nunca vai saber quem fez a requisição e o que ocorreu depois dela.
  - Caso HTTP fosse **stateful**, ele **manteria o estado** entre as requisições, ou seja, o servidor saberia o "histórico" da requisição
  - Para resulver o problema de ser stateless, podemos usar algumas soluções
  ### Cookies
  - Podemos usar cookies para armazenar dados no navegador, que podem ser persistidos entre requisições, para, por exemplo, um próximo retorno do usuário ao site.
  - cookies[:user_name] = "Bruno Silva"
  ### Sessions
  - Sessions são muito parecidos com cookies, no entanto os dados são armazenados no servidor
  - session[:user_name] = "Bruno Silva"
  
# Vários idiomas na mesma aplicação
  - Uma das formas de se usar vários idiomas é através de parâmetros de URL
  - No **ApplicationController** faça:
  
                                             before_action :set_locale

                                             def set_locale
                                                if params[:locale]
                                                   cookies[:locale] = params[:locale]
                                                end

                                                if cookies[:locale]
                                                   if I18n.locale != cookies[:locale]
                                                      I18n.locale = cookies[:locale]
                                                   end
                                                end
                                             end
                                             
  - Na view, crie dois links para os idiomas
    - <%= link_to 'Português, root_path(locale: 'pt-BR') %>
    - <%= link_to 'English, root_path(locale: 'en') %>
    
# Entendendo JS em uma aula
  - Em desenvolvimento Web é praticamente impossível fazer algo que não envolva HTML, CSS e Javascript.
  - Indo por partes, **HTML**(hyper Text Markup Language), é uma linguagem de marcação que permite estruturar uma página Web, indicando de forma semântica o que é o cabeçalho, rodapé, corpo e outras partes de uma página web
  - A grosso modo podemos dizer que o HTML é o projeto arquitetônico
  - Quando falamos em **CSS**(Cascanding Style Sheets) estamos flando, a grosso modo, em dar um visual ao nosso HTML
  - Quando o HTML + CSS é renderizado pelo navegador, temos o resultado da página web.
  - E onde entra o Javascript?
  - Bem, o JS fará o funcionamento das coisas **dinâmicas** do site
  - O JS, a principío, é uma linguagem que só funciona no navegador
  - Uma das coisas mais importantes que o JS faz é permitir adicionar, remover e alterar o HTML enquanto é exibido pelo navegador
  - Ou seja, só vamos conseguir páginas dinÂmicas usando Javascript em algum momento
  - Exemplo na pasta Public

# Asset Pipeline
  - Quando falamos de "assets" em desenvolvimento web estamos na maioria das vezes falando sobre **imagens, CSS e Javascript**
  - Veja a pasta **app/assets** da sua aplicação, Não por acaso ela possui as pastas **imagems e stylesheets**
  - O asset pipeline do Rails permite concatenar, minificar ou comprimir assets CSS e javascript gerando ao final apenas um arquivo pra **diminuir a quantidade de requisições que o navegador faz ao servidor**
  - A ideia de "asset pipeline" é fazer os assets passarem por "vários estágios/etapas"(minificar, concatenar, etc) até atingir um único asset final
  - O asset pipeline na verdade é uma gem chamada **sprockets-rails** que foi unificado ao Rails, ou seja, era um projeto externo
  
  ### Fingerprint
  - Todo arquivo CSS/JS carregado no navegador está propício a cache, visto que quanto menos requisições forem feitas ao servidor, melhor
  - No entanto, quando estamos desenvolvendo a aplicação, é normal que alteremos os assets com certa frequência e isso pode acabar "confundindo" o navegador em relação a fazer o cache
  - Sendo assim, o Rails utiliza uma técnica de "fingerprint" para contornar esse problema
  - Essa técnica consiste basicamente em fazer com que o nome do arquivo seja alterado a cada alteração no mesmo e isso por si só já evita o cache do navegador
  ### Organização dos Assets
  - Os assets devem ficar em pastas específicas
    - **app/assets:** Para assets criados pelo próprio Rails
    - **lib/assets:** Para assets que você mesmo criou
    - **vendor/assets:** Para assets que você "pegou" de terceiros

# ERB + CSS
  - Para usar código ruby misturado ao seu CSS, basta que vocÊ altere a extensão do arquivo css/scss para **css.erb** ou **scss.erb**
  - Para nosso exemplo, altere o arquivo **app/stylesheets/application.scss.erb**
  - body { background-color: <%= Rails.env.development? ? 'white' : 'yellow' %> }
### SASS
- Como falado anteriormente, o SASS adicion superpoderes ao seu CSS, mas, uma das coisas que mesmo você nçao send do front-end deve aprender a usar é a tag para referir-se aos assets. Nesse caso, uma imagem, por exemplo
- Comece baixando uma imagem e colocando-a em **lib/images**

# Usando tasks para pré-compilar assets
  - Sendo assim, para fazer um teste rode
    - **rails assets:precompile**
  - Após o comando finalizar, observe a pasta **public/assets**, bem como o arquivo **.sprockets-manifest*** que contém a referência para todos os arquivos
  - Como a pré-compilação só é necessária em produção, vamos usar uma task para remover os assets pré-compilados. Rode **rails assets:clobber**

# Conhecendo o Yarn
  - Yarn
    - O Yarn é um gerenciador de pacotes parabibliotecas Javascript adotado pela comunidade Rails na versão 5.1. Ele facilita bastante quando queremos usar uma biblioteca JS, evitando que precisemos informar ao asset pipeline os arquivos que devem ser pré-compilados, bastando apenas carregar e usar a biblioteca
    - Atenção: O Yarn NÃO é um projeto que o time de desenvolvimento Ruby on Rails mantém, eles apenas recomendam o uso e dão a possibilidade de se usar o yarn em projetos Rails
  
# Bootstrap
  - Bootstrap
    - É um kit de ferramentas dara desenvolver com HTML, CSS e JS.
    - Link qeu achei para usar o bootstrap no Rails 7 (https://www.youtube.com/watch?v=jyqjecyCv3A) 

# Módulo 05
  - Nesse módulo vamos desenvolver uma aplicação de questões onde podemos como administrados, adicionar, deletar editar as perguntas e como usuario iremos poder somente responder.

# Devise
  - Devise é um gem que gera todos os códigos e caminhos necessários para criar contas, log in, log out, etc.
  - Apos rodar o bundle, vamos na pasta config/environments/development.rb e colamos a seguinte linha de codigo
    - config.action_mailer.default_url_options = { host: 'localhost', port: 3000 } 
  - O comando '$ rails generate devise MODEL' faz com que o devise crie arquivos controlados por ele em nosso projeto(Models, Migrates).
  - Ativar a marcação true em config/initializers/devise.rb na linha onde esta escrito 'config.scoped_views = false'
  - Assim podemos rodar o comando 'rails generate devise:views Admins' e o Users , assim podendo criar as paginas de views separadas.
  - Roda um rails db:migrate para vê se está tudo funcionando corretamente.
  - Ativação do I18n no Devise (Após ativar o I18n na nossa aplicação)
  - Tradução I18n do Devise completa (https://gist.github.com/victorximenis/24edd5bb21b640a351e8f5367d7ecc2c) 
  - Para criar o backoffice do Admin e do profile daremos o comando no terminal..
    - rails g controller admins_backoffice/welcome index
    - rails g controller users_backoffice/welcome index
# Ajuste no sistema de layouts
  - Criação de novos controllerns (rails g controller admins_backoffice & users_backoffice)
  - Alterar a herança dos controllers que já existiam para herdar de seus novos e respectivos controllers
  - Criar novo arquivo de layout baseado no **application.html.erb** (admins e users)
  - Indicar os layout que os novos controllers devem usar
  - Remover o controller welcome e criar um novo baseado no namespace site, depois vamos criar um controller site para ser o controller 'pai'
    - rails d controller welcome
    - rails g controller site/welcome index
  - Alterar a herança do controller e adicionar o layout
  - Criar o novo layout baseado no **application.html.erb**
  - E modificar as rotas
  
# Uma amostra de metaprogramação
  - Usando o define_method
                                        
                                        
                                      class User
                                        def initialize(name)
                                          User.create_method(name)
                                        end
                                        
                                        def self.create_method(name)
                                          define_method :"speak_#{name.downcase}!" do
                                            "Hello, everyone! I'm #{name}!"
                                          end
                                        end
                                      end
                                      
                                      u = User.new("Bruno")
                                      puts u.speak_Bruno!
                                      
                                      
# Colocando a autenticação do Devise
  - Para proteger basta mudar no controller admin e user o método
    - before_action :authenticate_**nome do model!**

# Criando uma 'rake task' para os usuários padrão
  - Vamos começar criando uma task
    - rails g task dev setup
  - Adicione a gem e rode o bundle
    - gem 'tty-spinner'
  - Criar uma task para cadastrar o Usuário e o Admin padrão  
  
### Aula 135, criando o logoff
  - Ir em rails/info/routes e pegar o path de logoff
  - No arquivo da view do backoffice de cada um (admin, user) criar um button_to com o path para o logoff
  
# Disponibilizando os temas localmente
  - Comece indo na pasta **public** e criando uma pasta chamada templates, em seguida, entre na pasta template e clone o projeto gentelella, por fim, apague a pasta .git
  - Na sequência, volte para a pasta raiz do projeto, inicie o rails e verifique se você consegue acessar o template que ficou na pasta **production**
  - Novamente na pasta **public/templates** e clone no SBAdmin2, e apague também a pasta .git
  - Verificar se ambas estão funcionando localmente.

# Adicionando as templates no projeto
  - SBAdmin para o Admin
    - Remover turbolinks
    - Pesquise as bibliotecas JS/CSS contidas no template e adicione via Yarn.
    - Copie o layout para (layouts/admin_backoffice.html.erb)
    - Ajustar o application.css e application.js (removendo o require tree)
    - Substituir os CSS's do template no admin_backoffice.css
    - Adicione o sb-admin-2.css em lib/assets/stylesheets
    - Adicione o sb-admin-2.js em lib/assets/javascripts
    - Repita esse processo com os arquivos JS
    - Adicionar o admins_backoffice.js e o admins_backoffice.css para pré compilar em config/initializers/assets.rb
    - Adicionar o sb-admin-2.js e o sb-admin-2.css para pré compilar em config/initializers/assets.rb
  - Gentelella para User
    - Pesquise as bibliotecas JS/CSS contidas no template e adicione via Yarn.
    - Copie o layout para (layouts/user_backoffice.html.erb)
    - Ajustar o application.css e application.js (removendo o require tree)
    - Substituir os CSS's do template no user_backoffice.css
    - Adicione o custom.css em lib/assets/stylesheets
    - Adicione o custom.js em lib/assets/javascripts
    - Repita esse processo com os arquivos JS
    - Adicionar o users_backoffice.js e o users_backoffice.css para pré compilar em config/initializers/assets.rb
    - Adicionar o custom.js e o custom.css para pré compilar em config/initializers/assets.rb
    - O jQuery é diferente da versão que usamos no sb-admin-2, então requer a cópia da pasta jQuery do gentelella, colar na vendor la na raiz do projeto e para facilitar a leitura, mudar o nome para a versão que estamos a utilizar, e pré compilar o jQuery que acabamos de copiar.
    
# Ajustando o Logoff para o Admin
  - Altere o arquivo
    - **app/views/layout/admins_backoffice.html.erb** deixando o menu dropdown assim:
                                                
                                                
                                                <ul class="dropdown-menu dropdown-user">
                                                    <li>
                                                        <%= link_to destroy_admin_session_path, method: :delete do %>
                                                            <i class="fa fa-sign-out fa-fw"></i> Sair
                                                        <%end%>
                                                    </li>
                                                </ul>
                                                
# Ajustando o Logoff para o Admin
  - Altere o arquivo
    - **app/views/layout/users_backoffice.html.erb** deixando o menu dropdown assim:
                                                
                                                
                                                <ul class="dropdown-menu dropdown-user">
                                                    <li>
                                                        <%= link_to destroy_user_session_path, method: :delete do %>
                                                            <i class="fa fa-sign-out pull-right"></i> Sair
                                                        <%end%>
                                                    </li>
                                                </ul>
