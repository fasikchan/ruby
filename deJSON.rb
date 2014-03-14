#coding: utf-8

f = File.open("JSON.txt", "r+")


b = []
f.each do |line|
  s = ""
  a = []
  s << line
  a = s.scan(/\:\"[\w+[а-яА-Яa-zA-Z\@ \. \b \) \( \-\+]]+\"[\,\}]/)
    a.each do |i|
      i.each_char do |j|
        if j == "\"" or j == ":" or j == "," or j == "" or j == "}"
          i.delete!(j)
        end
      end
    end
   if a[0] != nil
    b << a
  end
end

n = b.length
File.open("deJSON.csv", "w") do |file|
  n.times do |i|
    file.puts b[i].join(" ")
  end
end
