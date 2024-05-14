class Computer
end

mac = Computer.new
pc = Computer.new

def mac.introducion = "I'm a mac"
def pc.introducion = "I'm a pc"

puts mac.introducion # "I'm a mac"
puts pc.introducion # "I'm a pc"