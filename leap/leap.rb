class Year

  def self.leap?(input_year)
    year(input_year)

    if Year.is_divisible_by?(4) &&
      !Year.is_divisible_by?(100) ||
      Year.is_divisible_by?(400)

      true
    else
      false
    end
  end

  private

  def self.is_divisible_by?(number)
    @year % number == 0
  end

  def self.year(input_year)
    @year = input_year
  end

end
