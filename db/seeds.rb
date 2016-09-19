Price.destroy_all
Share.destroy_all
1.times do 
  ticker = 3.times.map { [*'A'..'Z'].sample }.join
  date = Time.gm(Time.now.year-1, Time.now.month)#.strftime("%m/%d/%Y")

    365.times do
      price = rand(100..200)
      Price.create(Ticker: ticker, Price: price, Date: date)
      date = date + 1.day
    end


  date = Time.gm(Time.now.year-1, Time.now.month)#.strftime("%m/%d/%Y")
  12.times do
    shares = rand(1..10) * 10**10
    Share.create(Date: date, Ticker: ticker, Shares: shares)
    random_increment = rand(20..30)
    date = date + random_increment.day
  end
end



