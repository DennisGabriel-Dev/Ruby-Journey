require 'date'
data = {
  product1: {name: "rice", price: 4.5 , additional_infos: [validate_at: Date.today + 30]},
  product2: {name: "bean", price: 5.0, additional_infos: [validate_at:  Date.today + 15] }
}

puts data[:product1][:name] #rice
puts data.dig(:product1, :name) #rice

puts data[:product1][:additional_infos][0][:validate_at] # 2024-05-28 ## The result depends, in this case, a month after this code was made
puts data.dig(:product1, :additional_infos, 0, :validate_at) # 2024-05-28