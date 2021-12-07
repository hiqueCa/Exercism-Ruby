class Luhn

  def self.valid?(input)
    input
      .gsub(/\s/, '')
      .tap { |s| return false unless s[/\A\d\d+\z/] }
      .chars
      .reverse
      .map.with_index { |d, i| i.odd? ? d.to_i * 2 : d.to_i }
      .map { |d| d > 9 ? d - 9 : d }
      .sum % 10 == 0
  end
  
end