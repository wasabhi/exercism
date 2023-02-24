class Matrix
  def initialize(message)
    @matrix = message.split("\n").map {|row| row.split}.map {|row| row.map {|i| i.to_i } }
  end

  def rows
    @matrix
  end

  def columns
    columns = []
    column = []
    number_of_columns = @matrix[0].length
    number_of_columns.times do |i|
      @matrix.each do |cell|
        column << cell[i]
      end
      columns[i] = column
      column = []
    end
    columns
  end
end