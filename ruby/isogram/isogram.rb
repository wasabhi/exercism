module Isogram
  def self.isogram?(input)
    str = input.gsub(/\s+/,"").gsub(/\W/,"").downcase
    str.length == str.chars.uniq.length
  end
end