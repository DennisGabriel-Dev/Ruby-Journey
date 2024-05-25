def five(a, b, c, d, e)
  "I was passed #{a} #{b} #{c} #{d} #{e}"
end

p five(1, 2, 3, *[4, 5])
p five(*['a', 'b'], 1, 2, 3)
p five(*['a', 'b'], 3, *(4..5))