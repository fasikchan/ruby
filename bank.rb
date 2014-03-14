command = File.open("/home/fasik/Rubytest/bank_cmd.txt", "r+")
users = {}

command.each do |i|
  command_arr = i.split(" ")

  command_type = command_arr[0].to_i
  family = command_arr[1]

  if command_type == 1
    summ = command_arr[2].to_i
    users[family] = 0 if users[family].nil?
    users[family] += summ
  end
  
  if command_type == 2
    if users[family].nil?
      puts "ERROR"
    else
      puts users[family]
    end
  end
end  