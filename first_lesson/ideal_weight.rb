puts "Привет! Как тебя зовут?"
name = gets.chomp
puts "Укажи, пожалуйста, свой рост"
height = gets.to_i
ideal_weight = height - 110
if ideal_weight > 0
  puts "#{name}, идеальный вес для тебя #{ideal_weight} кг."
else
  puts "#{name}, твой вес и так оптимальный =)"
end
