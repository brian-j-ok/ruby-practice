def stock_picker(price_arr)
    best_buy_date = 0
    best_sell_date = 0
    best_price = 0

    price_arr.each_with_index do |buy_price, buy_day|
        price_arr.each_with_index do |sell_price, sell_day|
            if sell_price - buy_price > best_price && buy_day < sell_day
                best_buy_date = buy_day
                best_sell_date = sell_day
                best_price = sell_price - buy_price
            end
        end
    end

    puts "The best day to buy is " + best_buy_date.to_s + " so that you can sell on " + best_sell_date.to_s + " for a profit of " + best_price.to_s
end

stock_picker([17,3,6,9,15,8,6,1,10])