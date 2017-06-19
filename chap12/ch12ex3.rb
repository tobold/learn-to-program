#Chapter 12

#12.3
dict_array = [] 
dict_hash = {}

dict_array[0]
dict_array[1]
dict_array[2]
dict_array[3]
dict_hash['shia-a'] = 'candle'
dict_hash['shaya' ] = 'glasses'
dict_hash['shasha'] = 'truck'
dict_hash['sh-sha'] = 'Alicia'

dict_array.each do |word| 
	puts word
end

dict_hash.each do |c_word, word| 
	puts "#{c_word}: #{word}"
end