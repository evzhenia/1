arr = ('A'..'Z').to_a
arr_i = (1..arr.size+1)
alph = Hash[arr.zip(arr_i)] 
vowels = ['A','E','I','O','U']
alph.each do |key, value|
  unless vowels.include? key 
   alph.delete(key) 
  end
end
puts alph

