class Matrix
  def initialize(message)
    @matrix = message
                .split("\n")
                .map(&:split)
                .map {|row| row.map(&:to_i) }
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end
end
