file = File.read("./text.txt")

file.split(/\n/).each do
  p _1.strip if _1 !~ /D/
end

# ======= OUTPUT =======
# GABRIEL
# SILVA
