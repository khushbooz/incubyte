module MyStringHelper
  def self.add(string)
    string.present? ? string.split(',').map(&:to_i).inject(:+) : 0
  end
end
# MyStringHelper.add('3,5')
