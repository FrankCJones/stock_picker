def stock_picker(price_list)
    prices = price_list
    buy_day = prices[0]
    sell_day = prices[0]
    profit = sell_day - buy_day
    price_list.each do |buy|
        prices = prices.drop(1)
        prices.each do |sell|
            if profit < (sell - buy)
                buy_day = buy
                sell_day = sell
                profit = sell_day - buy_day
            end
        end
    end
    return "Buy at: " + buy_day.to_s + " Sell at: " + sell_day.to_s + " For a profit of: " + profit.to_s
end

stock_picker([1,2,3]) # Buy at 1 and sell at 3 for a profit of 2
stock_picker([2,3,1]) # Buy at 2 and sell at 3 for a profit of 1
stock_picker([3,1,2]) # Buy at 1 and sell at 2 for a profit of 1
stock_picker([2,1,3]) # Buy at 1 and sell at 3 for a profit of 2
stock_picker([1,3,2]) # Buy at 1 and sell at 3 for a profit of 2
stock_picker([3,2,1]) # Buy at 3 and sell at 3 for a profit of 0
stock_picker([17,3,6,9,15,8,6,1,10]) # Buy at 15 and sell at 3 for a profit of 12