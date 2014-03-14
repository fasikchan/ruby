User = Struct.new(:name, :last_name, :email)
paul = User.new("Paul","Kan","lalka@mail.com")

puts "#{paul["name"]} #{paul["last_name"]}"
puts
