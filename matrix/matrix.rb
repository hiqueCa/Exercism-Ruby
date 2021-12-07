class Matrix
  ROW_DELIMITER = "\n"

  def initialize(elements)
    @elements = elements.split("\n")
  end

  def row_size
    @elements.count
  end

  def rows
    rows = []
    @elements.each do |row|
      aux_row = row.split(' ')
      rows << aux_row.map(&:to_i)
    end

    rows
  end

  def columns
    columns = []
    0.upto(row_size - 1) do |i|
      aux_column = []
      rows.each do |row|
        aux_column << row[i]
      end
      columns << aux_column
    end

    columns
  end

end