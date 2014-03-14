def account(array)
  n = array.length
  command_type = 0
  family = ""
  summ = 0
  clients = {}

  n.times do |i|
    command_type = array[i][0].to_i
    family = array[i][1].to_s
    summ = array[i][2].to_i
    
    if command_type == 1
      clients.each do |k, v|
        if k == family
          summ = summ + v
        end  
      end
      clients[family] = summ
    end

    if command_type == 2
      clients.each do |k, v|
        if k == family
          puts "Hello #{k}! Your balance = #{v}"
        elsif k != family
          puts "ERROR"
        end
      end
    end 
  end
end


test = [["1", "asdad", "1233"], ["1", "asdfasd", "155"], ["1", "asdad", "6345"],["2", "asdad", "-3000"], ["2", "asdfasd" ], ["1", "asdfasd", "3000"], ["2", "asdfasd"], ["2", "dasfas", "5124"]]

account(test)