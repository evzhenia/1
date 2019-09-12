puts "Укажите длины трех сторон треугольника через запятую"
lengths = gets.split(",").map(&:to_i)
l_max = lengths.max
l_min = lengths.min
l_med = lengths.inject(:+) - lengths.max - lengths.min

equilateral = (l_max ==l_min) #равностор
isosceles =(l_max ==l_med)||(l_med == l_min) #равноберд
right = l_max**2 ==l_min**2 + l_med**2 #прямой

if equilateral
  puts "треугольник равнобедренный и равносторонний"
elsif isosceles
  puts "треугольник равнобедренный"
elsif right
  puts "треугольник прямой"
else 
  puts "треугольник не является прямым, равнобедоенным или равносторонним"
end
