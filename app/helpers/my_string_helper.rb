module MyStringHelper
  def self.add(string)
    numbers = string.scan(/-?\d+/).map(&:to_i)
    negative_numbers = numbers.select { |n| n < 0 }
    raise "Negative numbers not allowed: #{negative_numbers.join(', ')}" if negative_numbers.present?
    numbers.select { |n| n >= 0 }.sum
  rescue StandardError => e
    puts e.message
  end
end
# MyStringHelper.add('//;\n1;2,5,8,9')
