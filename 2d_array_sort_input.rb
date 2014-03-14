if ARGV[0] && ARGV[1] && ARGV[2] && ARGV[3]
  in_y   = ARGV[0].to_i
  in_x   = ARGV[1].to_i
  in_min = ARGV[2].to_i
  in_max = ARGV[3].to_i
else
  in_y   = 20
  in_x   = 20
  in_min = 1
  in_max = 99
end
num = []
in_y.times do |i|
  num[i] = [i]
    in_x.times do |j|
      num[i][j] = rand(in_min..in_max)
    end
end
in_y.times do |i|
  puts num[i].sort.join(" ")
end