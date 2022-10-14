# ruby_on_rails
Estudos de Ruby on Rails pelo curso de Jackson Pires, plataforma Udemy.

# Porque usar Ruby on Rails
- O processo de programar é muito mais rápido do que em outros frameworks e linguagens...
- As convenções Rails também tornam fácil para os desenvovledores se moverem entre diferentes projetos, onde cada um segue as mesmas estruturas e práticas de codificação....
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
