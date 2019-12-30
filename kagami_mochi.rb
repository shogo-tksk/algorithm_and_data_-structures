size = gets.to_i
mochi = []

(1..size).each do
  mochi << gets.to_i
end

mochi.uniq!

puts mochi.size