def selection_sort(array, size)
  count = 0
  (0..size - 1).each do |i|
    minj = i
    (i..size - 1).each do |j|
      # 未ソート部分
      if array[j] < array[minj]
        minj = j
      end
    end
    temp = array[i]
    array[i] = array[minj]
    array[minj] = temp
    count += 1
  end
  p array
  p count
end

inputs = [5, 6, 4, 2, 1, 3]
selection_sort(inputs, inputs.size)