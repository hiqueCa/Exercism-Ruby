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