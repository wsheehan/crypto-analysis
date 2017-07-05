namespace :write_prices_to_db do
  task :run, [:coin] => [:environment] do |task, args|
    @coin = args[:coin]

    @days = [*1..5].map { |n| n.days.ago.to_i }

    @days.each do |day|
      data = JSON.parse(HTTParty.get("https://min-api.cryptocompare.com/data/pricehistorical?fsym=#{@coin}&tsyms=USD&ts=#{day}").body)
      price = data[@coin]["USD"].to_f
      p price
    end

  end
end
