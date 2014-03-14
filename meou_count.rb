#coding: utf-8

input = File.open("/home/fasik/rubytest/history_chat.txt", "r+")
array = []
count = 0

input.each do |i|
  array << i
end

array.each do |i|
  if i.include? ":3"
    puts i
    count += 1
    end
end

puts count

