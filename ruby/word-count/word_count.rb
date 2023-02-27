class Phrase
  def initialize(phrase)
    @phrase_words = phrase
                      .downcase
                      .scan(/\b[\w']+\b/)
    @unique_words = @phrase_words.uniq
  end

  def word_count
    response = {}
    @unique_words.each do |u|
      response.store(u, @phrase_words.count(u))
    end
    response
  end
end