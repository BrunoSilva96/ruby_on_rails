# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

spinner = TTY::Spinner.new("[:spinner]  Cadastrando moedas...")
spinner.auto_spin

coins = [
   {  
      description: "Bitcoin", 
      acronym: "BTC",
      url_image: "https://imagensemoldes.com.br/wp-content/uploads/2020/09/%C3%8Dcone-Bitcoin-PNG.png"
   },
   {  
      description: "Etherium", 
      acronym: "ETH",
      url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgLXNMeG4OgFWrCWd2vi4gGx5vCb0RE0g8yg&usqp=CAU"
   },
   {  
      description: "Dash", 
      acronym: "DASH",
      url_image: "https://w7.pngwing.com/pngs/853/418/png-transparent-logo-dash-cryptocurrency-ethereum-steemit-ripple-coin-blue-text-trademark.png"
   }
]

coins.each do |coin|
   Coin.find_or_create_by!(coin)
end

spinner.success("Cadastro concluído!")