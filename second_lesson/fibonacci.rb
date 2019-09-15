fibonacci = [0,1]

for v in fibonacci  do
  i = fibonacci.size - 1
  v = fibonacci[i] + fibonacci[i-1]
    if v < 101
      fibonacci.push(v)
    end
end
puts fibonacci