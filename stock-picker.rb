def stock_picker(array = [2,3,4,27,0,12,4,5,6])
    days = []
    best_to_sell = array.max
    best_to_buy = array.min
    days = [array.index(best_to_buy),array.index(best_to_sell)]
end

print stock_picker()
puts ''