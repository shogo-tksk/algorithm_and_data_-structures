inputs = [5, 3, 2, 4, 1]

def bubble_sort(array, size)
  flag = true
  count = 0
  while flag do
    flag = false
    (size - 1).downto(1).each do |j|
      if array[j] < array[j - 1]
        temp = array[j]
        array[j] = array[j - 1]
        array[j - 1] = temp
        flag = true
        count += 1
      end
    end
  end
  p array
  p count
end

bubble_sort(inputs, inputs.size)
