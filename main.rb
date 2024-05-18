=begin
  requirements:
    1. takes in an array of stock prices (one for each day)
    2. return a pair of days that represents the best day to buy and best day to sell.
    3. Days start at 0
=end

def stock_picker(prices)
# ensures there are enough numbers to calculate a solution
  if prices.length < 2
    return "Not enough data to calculate a solution"
  end

  max_profit = 0
  buy_at = 0
  sell_at = 0

  #establishes the iteration for buy_at
  (0...prices.length).each do |i|
    #establishes the iteration for sell_at
    (i+1...prices.length).each do |j|
      #calculates profit for each potential combination of days
      profit = prices[j] - prices[i]
      #ensures the max_profit calculation is captured to provide a correct result.
      if profit > max_profit
        max_profit = profit
        buy_at = i
        sell_at = j
      end
    end
  end

  return "buy at day #{buy_at}, sell at day #{sell_at}. "
end
