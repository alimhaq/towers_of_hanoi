class Array
  def my_uniq
    arr = []

    self.each do |el|
      arr << el unless arr.include?(el)
    end

    arr
  end

  def two_sum
    sum_arr = []

    (0..self.length - 2).each do |i|
      (i + 1..self.length - 1).each do |j|
        sum_arr << [i, j] if self[i] + self[j] == 0
      end
    end

    sum_arr
  end

  def my_transpose
    transposed_arr = []
    (0..self.length - 1).each do |i|
      col_arr = []
      self.each do |row|
        col_arr << row[i]
      end
      transposed_arr << col_arr
    end
    transposed_arr
  end

  def stock_picker
    pair_arr = [0, 1]
    max_diff = self[0] - self[1]
    (1..self.length - 2).each do |i|
      (i + 1..self.length - 1).each do |j|
        if max_diff > self[i] - self[j]
          max_diff = self[i] - self[j]
          pair_arr = [i, j]
        end
      end
    end
    pair_arr
  end
end

# stock_arr = [2, 5, 1, 9, 3, 20, 10]
