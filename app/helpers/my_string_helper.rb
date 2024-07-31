module MyStringHelper
  def self.add(string)
    string = string.gsub(/\s+/, '')
    string.split(',').map(&:to_i).inject(:+) || 0
  end
end
# MyStringHelper.add('1\,3')
