N = 5
M = 5

a = []
N.times do |i|
  a[i] = []
  M.times do |j|
    a[i][j] = rand(1..100)
  end
end

s = 0.0
N.times do |i|
  M.times do |j|
    s += a[i][j]
  end
end
s = s / (N*M)

m = 100
x = y = 0
N.times do |i|
  M.times do |j|
    t = (s - a[i][j]).abs

    if t < m
      m = t
      x = i
      y = j
    end
  end
end

N.times do |i|
  puts a[i].join(", ")
end

puts "average = " + s.to_s
puts "min = a[#{x}][#{y}] = " + a[x][y].to_s