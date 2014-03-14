rand_numb = []
while rand_numb.length < 100
	rand_numb.push(rand(1..1000))
	p rand_numb.last
end