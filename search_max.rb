rand_numb = []
while rand_numb.length < 100
	rand_numb.push(rand(1..1000))
end
n = 0
rand_numb.each do |x|
	if n < x || n = x
		n = x
	end
puts n