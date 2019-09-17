puts "введите название товара, цену за единицу товара, количество товара"
# list = []
goods_list = {}
loop do
  input = gets.split.to_a
  name, price, quantity = input
  break if input == ["stop"]
  goods_list[name] = { price: price.to_f, quantity: quantity.to_f } 
end
puts goods_list
total_cost = 0
goods_list.each do |name, price_quantity|
  cost = price_quantity[:price] * price_quantity[:quantity]
  puts "Цена за #{name} составляет #{cost}"
  total_cost = total_cost + cost
  puts "Итоговая сумма зв все покупки составляет #{total_cost}"
end
