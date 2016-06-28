
# def canonical(word)
#   word.split("").sort.join
# end

  # data_canonical = []
  # file = File.open('words', "r")
  # data_canonical = file.read.split("\n")
  # file.close
  # p data_canonical



  data_word = []
  file = File.open('words', "r")
  data_word = file.read.split("\n")
  file.close

  data_word.map! { |word_downcase| word_downcase.downcase }
  p data_word.count

  data_canonical = []
  data_word.each do |canonical|
    data_canonical << canonical.split('').sort.join
  end
  p data_canonical.count


