# frozen_string_literal: true

# SimpleCalculator class
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError, 'first_operand must be numeric' unless first_operand.is_a? Numeric
    raise ArgumentError, 'second_operand must be numeric' unless second_operand.is_a? Numeric
    raise ZeroDivisionError, 'Division by zero is not allowed.' if second_operand.zero? && operation == '/'
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation

    res = first_operand.public_send(operation.to_sym, second_operand)
    "#{first_operand} #{operation} #{second_operand} = #{res}"
  rescue ZeroDivisionError => e
    e.message
  end
end
