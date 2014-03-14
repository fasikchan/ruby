b = ARGV[0]
a = 3.14
File.open("/home/fasik/rubytest/#{b}", "w") do |file|
  file.puts a
end