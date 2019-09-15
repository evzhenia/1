
puts "Ввелите число, месяц, год через точку"
date = gets.split(".").map(&:to_i)
days = [31,28,31,30,31,30,31,31,30,31,30,31]

mnth= date[1]
i = 0
day_number_mnth = 0
  while i< mnth-1
    day_number_mnth = day_number_mnth + days[i]
    i = i+1
  end
  if 
    mnth <= 2
    day_number = date[0] + day_number_mnth 
  else

    div_4 = (date[2].to_f/4).modulo(1)
    div_100 = (date[2].to_f/100).modulo(1)
    div_400 = (date[2].to_f/400).modulo(1)
      if 
        (div_4 == 0 && div_100 != 0) || div_400 == 0
        day_number = date[0] + day_number_mnth + 1
      else 
        day_number = date[0] + day_number_mnth  
      end
  end
puts day_number


