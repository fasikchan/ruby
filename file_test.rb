if ARGV[0] && ARGV[1]
  a = ARGV[0].to_i
  b = ARGV[1].to_i
else
  a = 0
  b = 200000
end

all_text = File.open("/home/fasik/rubytest/history_chat.txt", "r+")
lines_count = 0
text = ""
all_text.each do |lines|
  lines_count += 1
  text << lines
end

number = []
text_arr = []
hash_array = text.split(" ")

hash_array.each_index do |i|
  if i % 2 == 1
    number << hash_array[i].to_i
  else
    text_arr << hash_array[i]
  end
end

n = number.length
hash = {}
n.times do |i|
  hash[number[i]] = text_arr[i]
end

hash.each do |k, v|
  if k >= a && k <= b
    puts "|#{v}|=>|#{k}"
  end
end
