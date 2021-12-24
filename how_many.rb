def count_occurrences(words)
  counted_occurrences = {}

  words.each do |word|
    if counted_occurrences[word.downcase.to_sym] == nil
      counted_occurrences[word.downcase.to_sym] = 1
    else
      counted_occurrences[word.downcase.to_sym] += 1
    end
  end
  counted_occurrences
end

vehicles = [
  'car', 'car', 'truck', 'car', 'suv', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
  
count_occurrences(vehicles).each do |k,v|
  puts "#{k} => #{v}"
end
