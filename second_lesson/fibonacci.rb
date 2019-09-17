# fibonacci = [0,1]

# for v in fibonacci  do
#   i = fibonacci.size - 1
#   v = fibonacci[i] + fibonacci[i-1]
#     if v < 101
#       fibonacci.push(v)
#     end
# end
# puts fibonacci

LIMIT = 100 # constant

fibonacci = [0, 1]
next_number = 1

while next_number < LIMIT 
  fibonacci << next_number
  next_number = fibonacci[-1] + fibonacci[-2]
end
puts fibonacci
