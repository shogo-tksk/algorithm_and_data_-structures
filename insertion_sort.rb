inputs = [5, 2, 4, 6, 1, 3]

p inputs
(1..inputs.size - 1).each do |i|
  v = inputs[i] # 未ソートの部分の最初
  j = i - 1 # vの一個前
  while j >= 0 && inputs[j] > v do
    # 事前にどれだけデータが整列しているかで、ここの計算量が変わる
    # よってある程度整列されたデータに対しては、高いパフォーマンスが出る
    inputs[j + 1] = inputs[j]
    j -= 1
  end
  inputs[j + 1] = v
  p inputs
end