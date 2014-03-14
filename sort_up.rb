num = []
10.times do |i|
  num[i] = [i]
    10.times do |j|
     puts num[i][j] = rand(10..99)
    end
end
10.times do |i|
  puts num[i].sort.join(" ")
end
