size = gets.to_i
inputs = gets.split(' ').map(&:to_i)

def check(inputs, count)
  inputs.each do |v|
    if v % 2 != 0
      return count
    end
  end
  count += 1
  check(inputs.map{ |i| i / 2 }, count)
end

puts check(inputs, 0)