#coding: utf-8

f = File.open("SQL.txt", "r+")
s = ""
a = []

f.each do |line|
  s << line
end

a = s.scan(/[[A-Za-zА-Яа-я(0-9)_@.-]+ \| [A-Za-zА-Яа-я(0-9\,)_@.-]+]+/)
a.each do |i|
  i.delete! "+ "
  i.gsub!(/\|/, "\t")
end

a[1].gsub!(/\-/, "")
c = a.length

File.open("deSQL.csv", "w") do |file|
  c.times do |i|
    file.puts a[i]
  end
end
