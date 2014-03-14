hash_num = {}
index = ("a".."z").to_a

5.times do |i|
  hash_num2 = {}
  r1 = rand(-24..23)
  r2 = rand(-24..23)
  r3 = rand(-24..23) 
  k1 = index[r1]
  k2 = index[r2]
  k3 = index[r3]
  5.times do |j|
    r4 = rand(-24..23)
    r5 = rand(-24..23)
    k4 = index[r4]
    k5 = index[r5]
    hash_num2[k4+k5] = rand(0..10)
    hash_num[k1+k2+k3] = hash_num2
  end
end

a = []

hash_num.each do |key, value|
  hash_num[key].each do |key2,value2|
    puts "#{key} => #{key2} => #{value2}"
  a << key
  a << value2
    a.delete_if do |i|
      i == key
    end
  end  
end
   
puts a