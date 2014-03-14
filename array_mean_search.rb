IT = 5
num = []
s = 0
IT.times do |i|
  num[i] = [i]
  IT.times do |j|
    num[i][j] = rand(1..99)
  end
end

IT.times do |i|
  IT.times do |j|
    s = s + num[i][j]
  end
end

IT.times do |i|
  puts num[i].join(" ")
end

s = s/(IT*IT)
m = 99
x = y = 0
IT.times do |i|
  IT.times do |j|
    t = (s - num[i][j]).abs
    if t < m
      m = t
      x = i
      y = j
    end
  end
end
puts "Average " + s.to_s
puts "Max similar " + num[x][y].to_s


