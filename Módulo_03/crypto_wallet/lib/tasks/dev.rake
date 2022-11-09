namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando o banco de dados...") { %x(rails db:drop) }
      show_spinner("Criando o banco de dados...") { %x(rails db:create) }
      show_spinner("Migrando o banco de dados...") { %x(rails db:migrate) }
      %x(rails dev:add_mining_type)
      %x(rails dev:add_coins)
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

  desc "Cadastra as moedas"
  task add_coins: :environment do 
    show_spinner("Cadastrando moedas...") do
      coins = [
        {  
            description: "Bitcoin", 
            acronym: "BTC",
            url_image: "https://imagensemoldes.com.br/wp-content/uploads/2020/09/%C3%8Dcone-Bitcoin-PNG.png",
            mining_type: MiningType.find_by(acronym: "PoW")
        },
        {  
            description: "Etherium", 
            acronym: "ETH",
            url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgLXNMeG4OgFWrCWd2vi4gGx5vCb0RE0g8yg&usqp=CAU",
            mining_type: MiningType.all.sample
        },
        {  
            description: "Dash", 
            acronym: "DASH",
            url_image: "https://w7.pngwing.com/pngs/853/418/png-transparent-logo-dash-cryptocurrency-ethereum-steemit-ripple-coin-blue-text-trademark.png",
            mining_type: MiningType.all.sample
        },
        {
            description: "Iota",
            acronym: "IOT",
            url_image: "https://img2.gratispng.com/20180712/tkc/kisspng-iota-cryptocurrency-logo-internet-of-things-tether-aren-5b481f06b57ae1.5360095415314531907434.jpg",
            mining_type: MiningType.all.sample
        },
        {
            description: "ZCash",
            acronym: "ZEC",
            url_image: "https://cdn-icons-png.flaticon.com/512/1418/1418194.png",
            mining_type: MiningType.all.sample
        }
      ]

      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end
    end
  end

  desc "Cadastra as tipos de mineração"
  task add_mining_type: :environment do 
    show_spinner("Cadastrando tipos de mineração...") do
      mining_types = [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proff of Stake", acronym: "PoS"},
        {description: "Proff of Capacity", acronym: "PoC"}
      ]

      mining_types.each do  |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end


private

  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner]  #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("#{msg_end}")
  end
end
