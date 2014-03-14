x = ARGV[0].to_i
y = ARGV[1].to_i

def function(a, b)
  if a > b
    puts a
    a = function(a - 1, b)
  elsif 
    a < b
    puts a
    a = function(a + 1, b)
  else
    puts b
  end
end

function(x, y)