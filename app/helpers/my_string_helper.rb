module MyStringHelper
  class NegativeNumberError < StandardError
    def initialize(negative_numbers)
      super("Negative numbers are not allowed: #{negative_numbers.join(', ')}")
    end
  end

  def self.add(string)
    numbers = string.scan(/-?\d+/).map(&:to_i)
    negative_numbers = numbers.select { |n| n < 0 }
    unless negative_numbers.empty?
      raise NegativeNumberError.new(negative_numbers)
    end
    numbers.select { |n| n >= 0 }.sum
  rescue NegativeNumberError => e
    puts e.message
  end
end
# MyStringHelper.add("1,2,3,-4,-5")
