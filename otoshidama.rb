count, total = gets.split(' ').map(&:to_i)
x, y, z = -1, -1, -1

(0..count).each do |_x|
  (0..count).each do |_y|
    _z = count - _x - _y
    next if _z < 0
    if _x * 10000 + _y * 5000 + _z * 1000 == total
      x = _x
      y = _y
      z = _z
      break
    end
  end
end

puts "#{x} #{y} #{z}"