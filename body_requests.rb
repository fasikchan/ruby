#coding: utf-8

def dejson(json)

  surname = []
  name = []
  patronymic = []
  birthday = []
  birthmonth = []
  birthyear = []
  mobile = []
  email = []
  credit = []
  ip = []

  if json.include?("surname")
    surname = json.scan(/\"surname\"\:\"[а-яА-Я]+\"/)
    surname.each do |string|
      string.delete!("\"surname:")
    end
  end

  if json.include?("name")
    name = json.scan(/\"name\"\:\"[а-яА-Я]+\"/)
    name.each do |string|
      string.delete!("\"name:")
    end
  end

  if json.include?("patronymic")
    patronymic = json.scan(/\"patronymic\"\:\"[а-яА-Я]+\"/)
    patronymic.each do |string|
      string.delete!("\"patronymic:")
    end
  end

  if json.include?("birthday")
    birthday = json.scan(/\"birthday\"\:\"[0-9]+\"/)
    birthday.each do |string|
      string.delete!("\"birthday:")
    end
  end

  if json.include?("birthmonth")
    birthmonth = json.scan(/\"birthmonth\"\:\"[0-9]+\"/)
    birthmonth.each do |string|
      string.delete!("\"birthmonth:")
    end
  end

  if json.include?("birthyear")
    birthyear = json.scan(/\"birthyear\"\:\"[0-9]+\"/)
    birthyear.each do |string|
      string.delete!("\"birthyear:")
    end
  end

  if json.include?("mobile")
    mobile = json.scan(/\"mobile\"\:\"[[0-9]+[\)\s\(\-\+]]+\"/)
    mobile.each do |string|
      string.delete!("\"mobile:\s")
    end
  end

  if json.include?("email")
    email = json.scan(/\"email\"\:\"[\w+[\@\.[0-9]+]]+\"/)
    email.each do |string|
      string.slice!(/\"email\"\:/)
      string.delete!("\"")
    end
  end

  if json.include?("credit")
    credit = json.scan(/\"credit\"\:\"[0-9]+\"/)
    credit.each do |string|
      string.delete!("\"credit:")
    end
  end

  if json.include?("ip")
    ip = json.scan(/\"ip\"\:\"[[0-9]+\.]+\"/)
    ip.each do |string|
      string.delete!("\"ip:")
    end
  end

  size = name.length
  result = ""

  size.times do |i|
    result << "#{surname[i]} #{name[i]} #{patronymic[i]} #{birthday[i]} #{birthmonth[i]} #{birthyear[i]} #{mobile[i]} #{email[i]} #{credit[i]} #{ip[i]}\n"
  end

  return result

end

json = ""

File.open("JSON.txt", "r+").each do |line|
  json << line
end

result = dejson(json)

File.open("body_request.csv", "w") do |file|
  file.puts result
end

