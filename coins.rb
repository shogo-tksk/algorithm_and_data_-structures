a = gets.to_i
b = gets.to_i
c = gets.to_i
answer = gets.to_i
count = 0

(0..c).each do |_c|
  (0..b).each do |_b|
    (0..a).each do |_a|
      count += 1 if _c * 50 + _b * 100 + _a * 500 == answer
    end
  end
end

puts count