require 'pry-byebug'

def stock_picker(prices)
    max = 0
    buy_day = nil
    sell_day = nil
    prices.each_with_index do |buy_price, buy_index|
        prices[buy_index..-1].each_with_index do |sell_price, sell_index|
            if (sell_price - buy_price) > max then
                max = sell_price - buy_price
                buy_day = buy_index
                sell_day = sell_index + buy_index
            end
        end
    end
    [buy_day, sell_day]
end
p stock_picker([17,3,6,9,15,8,6,1])