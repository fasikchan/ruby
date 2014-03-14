num = []
20.times do |i|
	num[i] = [i]
		20.times do |j|
			num[i][j] = rand(1..99)
		end
end
20.times do |i|
	puts num[i].sort.join(" ")
end

