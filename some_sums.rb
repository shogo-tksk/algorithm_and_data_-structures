n, a, b = gets.split(' ').map(&:to_i)
temp = []

def some_sums(a, b, n, temp)
  (1..n).each do |_n|
    million, thousand, hundred, ten, one = _n.to_s.split('').map(&:to_i)
    million ||= 0
    thousand ||= 0
    hundred ||= 0
    ten ||= 0
    one ||= 0
    _temp = million + thousand + hundred + ten + one
    temp.push(_n) if a <= _temp && _temp <= b
  end
  return temp
end

puts some_sums(a, b, n, temp).inject(:+)