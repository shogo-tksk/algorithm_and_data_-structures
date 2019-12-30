inputs = gets.chomp.split('').map(&:to_i)
count = 0
inputs.each do |i|
  count += 1 if i == 1
end

puts count
