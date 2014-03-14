#coding: utf-8

if ARGV[0] == nil
  COMMAND = "SHOW"
else
  COMMAND = ARGV[0]
end

def file_to_array

  f = File.open("telbook.txt", "r")

  text = ""

  f.each do |lines|
    text << lines
  end

  array = text.split("\n")

  return array

end


def insert(family, name, tel)

  current_book = file_to_array

  s = " #{family} #{name} tel- #{tel}."

  if current_book.include?(s)
    puts "\n Contact already exists in the database"
  else
    current_book << s
    puts "\n Contact has been inserted"
  end

  current_book.uniq!

  File.open("telbook.txt", "w") do |file|
    file.puts current_book
  end

end


def show

  current_book = file_to_array

  total = current_book.length
  puts current_book
  puts "\n Total contacts: #{total}"


end


def select(keyword)

  current_book = file_to_array

  count = 0

  current_book.each do |i|
    if i.include?(keyword)
      puts i
      count = 1
    else
      count = 2
    end
  end

  if count == 1
    puts "\n Now, you see result equal your keyword"
  else
    puts "\n There are no matches in the database"
  end

end


def delete(keyword, keyword2)

  if keyword2 == nil
    puts "\n Please, enter two aurguments for delete"
    exit
  end

  current_book = file_to_array

  s = ""

  current_book.each do |i|
    if i.include?(keyword) and i.include?(keyword2) and keyword != keyword2
      s = i
    end
  end

    if s.include?(keyword)
      d = current_book.index(s)
      current_book.slice!(d)
      puts "\n Contact #{s} has been deleted"
    else
      puts "\n There are no matches in the database"
    end

  File.open("telbook.txt", "w") do |file|
    file.puts current_book
  end

end


def update(keyword, new_value)

   f = File.open("telbook.txt", "r")

  text = ""

  f.each do |lines|
    text << lines
  end

  if text.include?(keyword)
    puts "\n Contact has been updated"
  else
    puts "\n Contact not found"
  end

  current_book = text.split(" ")

  current_book.each do |i|
    if i == keyword
      i.replace(new_value)
    end
  end

  text_update = ""

  current_book.each do |i|
    text_update << " " + i
  end

  update_book = text_update.split(".")

  update_book.each do |i|
    i.insert(-1, ".")
  end

  File.open("telbook.txt", "w") do |file|
    file.puts update_book
  end

end


def drop(db_name)

  a = "telbook.txt"

  if db_name == a

    current_book = file_to_array
    current_book.slice!(0..-1)

    File.open("telbook.txt", "w") do |file|
      file.puts current_book
    end

    puts "\n Database has droped"

  else

    puts "\n Wrong database name"

  end

end


def generate

  current_book = file_to_array

  name = ["Олег", "Вася", "Егор", "Степан", "Михаил", "Александр", "Владислав", "Владимир", "Георгий", "Игорь", "Вячеслав", "Иннокентий", "Павел", "Иван", "Василий"]
  family = ["Васильков", "Ефремов", "Дорохин", "Оськин", "Георгиев", "Павлычев", "Досаев", "Абдулаев", "Высоцкий", "Дубравин", "Абдулин", "Толстой", "Власов", "Васильев", "Петренко"]
  last_name = ["Васильевич", "Георгиевич", "Олегович", "Петрович", "Григорьевич", "Александрович", "Алексеевич", "Владимирович", "Вячеславович", "Павлович", "Степанович", "Игоревич", "Владиславович"]
  x = name.length - 1
  y = family.length - 1
  r = last_name.length - 1
  s = ""
  z = x * y * r

  z.times do |i|
    tel = rand(100000000..999999999)
    n = rand(0..x)
    f = rand(0..y)
    g = rand(0..r)
    s = " #{family[f]} #{name[n]} #{last_name[g]}"
    current_book << s
  end

  current_book.uniq!

  File.open("telbook.txt", "w") do |file|
    file.puts current_book
  end

  show

end


if COMMAND == "INSERT"
  family = ARGV[1]
  name = ARGV[2]
  tel = ARGV[3]
  insert(family, name, tel)
end

if COMMAND == "SHOW"
  show
end

if COMMAND == "SELECT"
  keyword = ARGV[1]
  select(keyword)
end

if COMMAND == "DELETE"
  keyword = ARGV[1]
  keyword2 = ARGV[2]
  delete(keyword, keyword2)
end

if COMMAND == "UPDATE"
  keyword = ARGV[1]
  new_value = ARGV[2]
  update(keyword, new_value)
end

if COMMAND == "DROP"
  db_name = ARGV[1]
  drop(db_name)
end

if COMMAND == "GENERATE"
  generate
end
