puts "Введите 3 коэффициента через запятую"
input = gets
input= input.split(",").map(&:to_i)
a, b, c = input
d = b**2 - 4*a*c

if d < 0
  puts "D = #{d}, корней нет"
elsif d ==  0
  x1 = (-b)/2*a
  puts "D = #{d}, x = #{x1}"
else
  sqrt_d = Math.sqrt(d)
  x1 = (-b+sqrt_d)/(2*a)
  x2 = (-b-sqrt_d)/(2*a)
  puts "D = #{d}, x1 = #{x1}, x2 = #{x2}"
end



  