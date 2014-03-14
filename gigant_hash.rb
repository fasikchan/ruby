array_char = ("a".."z").to_a
a = {}

200000.times do |i|
  r1 = rand(0..25)
  r2 = rand(0..25)
  r3 = rand(0..25)
  r4 = rand(0..25)
  r5 = rand(0..25)
  r6 = rand(0..25)
  r7 = rand(0..25)
  r8 = rand(0..25)
  r9 = rand(0..25)
  k1 = array_char[r1]
  k2 = array_char[r2]
  k3 = array_char[r3]
  k4 = array_char[r4]
  k5 = array_char[r5]
  k6 = array_char[r6]
  k7 = array_char[r7]
  k8 = array_char[r8]
  k9 = array_char[r9]
  a[k1+k2+k3+k4+k5+k6+k7+k8+k9] = rand(1..200000)
end

File.open("/home/fasik/Rubytest/gigantic_hash.txt", "w") do |file|
  a.each do |k, v|
    file.puts "#{k} #{v}"
  end
end