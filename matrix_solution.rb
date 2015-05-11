class Matrix

  def self.rotate(matrix)
    new_matrix = []
    new_row = []
    matrix.each do |row|
      new_matrix << row.reverse
    end
    final_matrix = []
    # At this point we've reversed the rows

    new_matrix.each_with_index do |row, row_position|

      row.each_with_index do |column_value, column_position|

      if final_matrix[column_position] == nil
        final_matrix[column_position] = []
      end

      
        # The column_position is now the row, and the row_position is now the column
        final_matrix[column_position] [row_position] = column_value
      end

    end

    final_matrix
  end

  def self.print_matrix(matrix)
    matrix.each {|row| puts row.inspect}
  end
end

sample_matrix = [
  ['a', '0', '0', 'b'],
  ['0', 'x', '0', '0'],
  ['x', 'x', 'x', '0'],
  ['c', '0', '0', 'd']
]

Matrix.print_matrix(sample_matrix)
puts
Matrix.print_matrix( Matrix.rotate(sample_matrix))

# matrix
# 0 0 0 0
# 0 X 0 0
# X X X 0
# 0 0 0 0

# solution
# 0 0 0 0
# 0 0 X 0
# 0 X X 0
# 0 0 X 0

Matrix.rotate(sample_matrix)