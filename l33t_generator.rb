#coding: utf-8

input = ARGV[0]
operator = ""
output = ARGV[1]
result = ""

if input == nil
  puts "Please, enter the input filename.txt"
  exit
elsif output == nil
  puts "Please enter the output filename.txt"
  exit
end

input_text = File.open("/home/fasik/rubytest/#{input}", "r+")
input_text.each do |i|
  operator << i
end

alphabet = {
"aA4аА" => "4",
"bB8вВ" => "8",
"cCсС" => "(",
"dD" => "|)",
"eE3еЕ" => "3",
"fF" => "|=",
"gG6бБ" => "6",
"hHнН" => "|-|",
"iI" => "!",
"jJ" => "_|",
"kKкК" => "|<",
"lL1" => "1",
"mMмМ" => "|v|",
"nN" => "|\\|",
"oO0оО" => "0",
"pPрР" => "|>",
"qQ" => "0,",
"rR" => "|2",
"sS5" => "5",
"tTтТ" => "7",
"uU" => "|_|",
"vV" => "\\/",
"wW" => "\\^/",
"xXхХ" => "><",
"yYуУ" => "'/",
"zZ2" => "2",
"гГ" => "|\"\"",
"дД" => "/_\\",
"ёЁ" => "3:",
"жЖ" => "}|{",
"зЗ" => "∑",
"иИ" => "|/|",
"йЙ" => "|'/|",
"лЛ" => "j|",
"пП" => "/7",
"фФ" => "<|>",
"цЦ" => "||,",
"чЧ" => "'-|",
"шШ" => "LL|",
"щЩ" => "LL|_",
"ьЬ" => "b",
"ыЫ" => "b|",
"ъЪ" => "'b",
"эЭ" => "∈",
"юЮ" => "|-0",
"яЯ9" =>"9"}

symbol = [",", ".", "!", "?", " ", "\"", "\'", "(", ")", "\n", "[", "]", "9", "/", "\\", ":"]

operator.each_char do |i|
  symbol.each do |j|
    if i == j
      result << j
    end
  end
  alphabet.each do |k, v|
    if k.include?(i)
      result << v
    end
  end
end

if result != nil
  puts "Your file translated!"
end

File.open("/home/fasik/rubytest/#{output}", "w") do |file|
  file.puts result
end
