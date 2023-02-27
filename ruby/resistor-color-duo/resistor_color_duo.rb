module ResistorColorDuo
  ENCODING = %w[black brown red orange yellow green blue violet grey white]
  
  def self.value(colors)
    response = ""
    colors.take(2).each do |color|
      response << ENCODING.find_index(color).to_s
    end
    response.to_i
  end
end