def stock_picker(prices)
  return [] if prices.empty?

  min_price = prices[0]
  min_index = 0

  max_profit = 0
  buy_day = 0
  sell_day = 0

  prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
    else
      profit = price - min_price
      if profit > max_profit
        max_profit = profit
        buy_day = min_index
        sell_day = index
      end
    end
  end

  max_profit > 0 ? [buy_day, sell_day] : []
end
