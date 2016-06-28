# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 

  data_word = []
  file = File.open('words', "r")
  data_word = file.read.split("\n")
  file.close

  data_word.map! { |word_downcase| word_downcase.downcase }
 

  data_canonical = []
  data_word.each do |canonical|
    data_canonical << canonical.split('').sort.join
  end
 

for value_num in 0..data_word.count-1  
  Word.create!(word: data_word[value_num], canonical: data_canonical[value_num])
end
