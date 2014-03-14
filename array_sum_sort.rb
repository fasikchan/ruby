num = []
s = 0
5.times do |i|
  num[i] = [i]
  5.times do |j|
    num[i][j] = rand(1..99)
  end
end

5.times do |i|
  5.times do |j|
    s = s + num[i][j]
  end
  num[i].push(s)
  s = 0
end

num.sort_by! do |i|
  i[-1]
end

5.times do |i|
  num[i].slice!(-1)
end

5.times do |i|
  puts num[i].join(" ")
end