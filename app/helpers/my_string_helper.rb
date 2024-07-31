module MyStringHelper
  def self.add(string)
    string = string.gsub(/\s+/, '').gsub("\n", ',')
    string.split(',').map(&:to_i).inject(:+) || 0
  end
end
# MyStringHelper.add("2,\n;,2")
