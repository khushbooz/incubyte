module MyStringHelper
  def self.add(string)
    string = string.gsub(/\D/, '')
    string.split('').map(&:to_i).inject(:+) || 0
  end
end
# MyStringHelper.add(//;\n1;2)
