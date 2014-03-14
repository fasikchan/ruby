def ackermann(m, n)
  if m == 0
    a = n + 1
  end
  if m > 0 && n == 0
    a = ackermann(m - 1, 1)
  end
  if m > 0 && n > 0
    a = ackermann(m - 1, ackermann(m, n - 1))
  end
  return a
end

puts ackermann(2, 2)