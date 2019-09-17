alph = ('A'..'Z').to_a
vowels = %w[A E I O U]
alph_with_numbers = {}

alph.each.with_index(1) do |letter, index| 
  alph_with_numbers[letter] = index if vowels.include? letter 
end
puts alph_with_numbers
