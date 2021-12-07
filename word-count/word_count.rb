class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def words
    @phrase.downcase.split(/[^'\w]+/)
  end

  def word_count
    word_count = Hash.new(0)
    sentence_words = words
    0.upto(sentence_words.length-1) do |i|
      this_word = sentence_words[i]
      first_character = this_word[0]
      last_character = this_word[-1]
      
      if first_character == "'" || last_character == "'" 
        this_word = this_word.tr("'", "")
      end
      
      if this_word == ""
        next
      end

      word_count[this_word] += 1
    end

    word_count
  end

end
