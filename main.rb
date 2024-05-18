=begin
  requirements:
    1. takes in an array of stock prices (one for each day)
    2. return a pair of days that represents the best day to buy and best day to sell.
    3. Days start at 0
=end

def stock_picker(prices)

  if prices.length < 2
    return "Not enough data to calculate a solution"
  end

  max_profit = 0
  buy_at = 0
  sell_at = 0

  (0...prices.length).each do |i|
    i+1...prices.length.each do |j|
      profit = prices[j] - prices[i]
      if profit > max_profit
        max_profit = profit
        buy_at = i
        sell_at = j
      end
    end
  end

  return(buy_day,sell_day)
end

price_list = [17,3,6,9,15,8,6,1,10]

puts stock_picker(price_list)
