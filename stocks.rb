require 'pry-byebug'


## returning just the values, not the indexes
prices = Array.new(10) { rand(1...30) }

def stock_picker(prices)

  profit = {}
  prices.combination(2) do |comb|

    profit[comb] = (comb[1] - comb[0])

  end

  # {"15-3"=>12}
  max_profit = profit.select do
  |key, value|
  value == profit.values.max
  end
  [prices.index(max_profit.keys.flatten[0]), prices.index(max_profit.keys.flatten[1])]
end


indeces = stock_picker(prices)
p prices
p indeces
puts "Profit of #{prices[indeces[1]]} - #{prices[indeces[0]]} = #{prices[indeces[1]]-prices[indeces[0]]}"
