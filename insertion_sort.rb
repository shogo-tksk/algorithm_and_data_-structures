size = gets
inputs = gets.split(' ').map(&:to_i)

(1..inputs.size - 1).each do |i|
  v = inputs[i]
  j = i - 1
  while j >= 0 && inputs[j] > v do
    inputs[j + 1] = inputs[j]
    j -= 1
  end
  inputs[j + 1] = v
  puts inputs.join(' ')
end