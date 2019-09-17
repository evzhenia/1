puts "Введите число, месяц, год через точку"
date = gets.split(".").map(&:to_i)
days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

month= date[1]
month_count = days.take( month - 1 )
day_count_month = month_count.reduce(:+)  

day, month, year = date

divided_by_4 = (year % 4) == 0
divided_by_100 = (year % 100) == 0
divided_by_400 = (year % 400) == 0
leap_year = divided_by_4 && !divided_by_100 || divided_by_400

 day_count = day + day_count_month 
 day_count += 1 if leap_year && month > 2 

puts day_count
