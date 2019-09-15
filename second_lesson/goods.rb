puts "введите название товара, цену за единицу товара, количество товара"
list = []
loop do
  input = gets.split.to_a
  break if input == ["stop"]
    list = list.push(input)
end

list_hash = {}
price_for_all = 0
list.each do |i|
  price_qnt = {i[1].to_f => i[2].to_f}
  list_hash = {i[0] => price_qnt}.merge(list_hash)
  price_for_good = i[1].to_f * i[2].to_f
  price_for_all = price_for_all + price_for_good
  puts "Итоговая цена за #{i[0]} составляет #{price_for_good} "
end
puts "Итоговая цена за все покупки составляет #{price_for_all}"
puts list_hash
