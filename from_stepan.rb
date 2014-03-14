a = []
b = []
5.times do |i|
  a[i] = []
  5.times do |j|
    a[i][j] = rand(1..100)
  end
end

5.times do |i|
  b[i] = 0
  5.times do |j|
    b[i] += a[i][j]
  end
end

b.sort_by do |i|
  b.size
end

5.times do |i|
  puts a[i].join(" + ") + " = " + b[i].to_s
end