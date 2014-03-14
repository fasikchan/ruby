N = rand(2..20).to_i
num = []

N.times do |i|
  num[i] = [i]
  N.times do |j|
  num[i][j] = rand(10..99)
  end
end

p = -1
s = y = x = 0
N.times do |i|
  1.times do |j|
    j = p
    s = s + num[i][j]
    y = num[i][j]
    if x < y
      x = y
    end
  end
  p = p - 1 
end

r = g = q = w = 0
N.times do |i|
  1.times do |j|
    j = r
    g = g + num[i][j]
    q = num[i][j]
    if w < q
      w = q
    end
  end
  r = r + 1
end

N.times do |i|
  puts num[i].join(" ")
end

attr_arr = [w.to_s, x.to_s, g.to_s, s.to_s]
puts_arr = ["Max num into main = ", "Max num into incidental = ", "Summary main = ", "Summary incidental = "]
4.times do |i|
  puts puts_arr[i] + attr_arr[i]
end
