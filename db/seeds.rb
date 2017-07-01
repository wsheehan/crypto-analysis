list = JSON.parse(HTTParty.get('https://www.cryptocompare.com/api/data/coinlist/').body)

list['Data'].each do |k, v|
  Coin.create(ticker: k, coin_name: v['CoinName'])
end
