require 'set'

class Pangram 
  ALPHA_REGEX = Regexp.new('[^A-Za-z]')
  ALPHABET_LENGTH = 26

  attr_reader :normalized_sentence

  def self.pangram?(sentence)
    possible_pangram = new(sentence)
    possible_pangram.as_long_as_alphabet?
  end

  def initialize(sentence)
    @normalized_sentence = sentence.downcase.gsub(ALPHA_REGEX, "").split("")
  end

  def unique_characters
    Set.new(@normalized_sentence)
  end

  def as_long_as_alphabet?
    unique_characters.size == ALPHABET_LENGTH
  end

end
