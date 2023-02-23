module Acronym
  def self.abbreviate(message)
    acronym = ""
    message.gsub(/[^\w]/," ").split.each do |word|
      acronym += word[0].upcase
    end
    acronym
  end
end