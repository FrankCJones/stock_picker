def stock_picker(price_list)
    prices = price_list
    buy_day = 0
    sell_day = 0
    profit = price_list[sell_day] - price_list[buy_day]
    price_list.each_with_index do |buy, i|
        prices = prices.drop(1)
        prices.each_with_index do |sell, j|
            if profit < (sell - buy)
                buy_day = i
                sell_day = j + i + 1
                profit = price_list[sell_day] - price_list[buy_day]
            end
        end
    end
    return [buy_day, sell_day]
end

stock_picker([1,2,3]) # Buy at 1 and sell at 3 for a profit of 2
stock_picker([2,3,1]) # Buy at 2 and sell at 3 for a profit of 1
stock_picker([3,1,2]) # Buy at 1 and sell at 2 for a profit of 1
stock_picker([2,1,3]) # Buy at 1 and sell at 3 for a profit of 2
stock_picker([1,3,2]) # Buy at 1 and sell at 3 for a profit of 2
stock_picker([3,2,1]) # Buy at 3 and sell at 3 for a profit of 0
stock_picker([17,3,6,9,15,8,6,1,10]) # Buy at 15 and sell at 3 for a profit of 12