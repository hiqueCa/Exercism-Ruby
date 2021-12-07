module ScrabbleLetterValues
  LETTER_VALUES = {%w(A E I O U L N R S T) => 1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10}
end

class Word

  def initialize(word)
    @word = word
  end

  def normalize_to_no_nil
    if @word != nil
      @word
    else
      "-"
    end
  end

end

class Scrabble

  def self.score(word)
    self.new(word).score
  end
  
  def initialize(word)
    @word = Word.new(word).normalize_to_no_nil
  end
  
  def score
    sum = 0
    @word.chars.each do |letter|
      ScrabbleLetterValues::LETTER_VALUES.each do |key, value|
        if key.include?(letter.capitalize)
          sum += value
          break
        end
      end
    end

    sum
  end
  
end
