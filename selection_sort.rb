def selection_sort(array, size)
  (0..size - 1).each do |i|
    minj = i
    (i..size - 1).each do |j|
      if array[j] < array[minj]
        minj = j
      end
      temp = array[i]
      array[i] = array[minj]
      array[minj] = temp
    end
  end
  p array
end

inputs = [5, 6, 4, 2, 1, 3]
selection_sort(inputs, inputs.size)
