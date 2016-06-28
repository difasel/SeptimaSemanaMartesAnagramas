class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.to_canonical(word)
    word.split('').sort.join
  end

  def self.list_canonical(new_word)
    # self.find_by(canonical: 'a')
    Word.where(canonical: to_canonical(new_word))
  end

end

