class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  """All of this methods are class methods"""
  def self.calculate(first_operand, second_operand, operation)
    unless (first_operand.is_a?(Integer)) && (second_operand.is_a?(Integer))
      raise ArgumentError
    end

    unless ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation.new 
    end

    begin
      operation_return = "#{first_operand} #{operation} #{second_operand} = "
      if operation == '+'
        answer = first_operand + second_operand
        return operation_return + "#{answer}"
      elsif operation == '*'
        answer = first_operand * second_operand
        return operation_return + "#{answer}"
      else
        answer = first_operand / second_operand
        return operation_return + "#{answer}"
      end
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end

end
