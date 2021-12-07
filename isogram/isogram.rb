class Isogram
  ALLOWED_TO_REPEAT = ["-", " "]

  def self.reference_form(input)
    input.downcase.split("")[0...-1]
  end

  def self.allowed_to_repeat?(element)
    ALLOWED_TO_REPEAT.include?(element)
  end

  def self.isogram?(input)
    reference_form = reference_form(input)
    downcased_input = input.downcase
    reference_form.each do |element|
      if not(allowed_to_repeat?(element)) && downcased_input.count(element) > 1
        return false
      end
    end

    true
  end
end
