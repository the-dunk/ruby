def stock_picker(stock_days)
  if stock_days.size <= 1 
    return "Needs more data"
  end
  
  considered_buy_days = stock_days[0..-2] # Do not need to consider buying on the last day since you can't sell

  lowest_price_index = 0
  highest_price_index = 1
  highest_profit_to_date = 0
  
  considered_buy_days.size.times do |buy_index|

    potential_profit = 0
    # Check only the days after the current
    stock_days[buy_index+1..-1].size.times do |sell_index_offset|
      # Sell index would start from 0 without adding buy_index
      sell_index = sell_index_offset + buy_index
      potential_profit = stock_days[sell_index] - stock_days[buy_index]

      if potential_profit > highest_profit_to_date
        # Save our highest profit and the indices associated
        highest_profit_to_date = potential_profit

        lowest_price_index = buy_index
        highest_price_index = sell_index
      end
    end
  end

  if highest_profit_to_date <= 0 #Everything was either 0 profit or a loss
    return "No chance of profit."
  end

  [lowest_price_index, highest_price_index]
end




print stock_picker([17,3,6,9,15,8,6,1,10])