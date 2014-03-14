x = ARGV[0].to_i

def function(a, b)
  if a <= b
    puts a
    a = function(a + 1, b)
  end
end

function(1, x)