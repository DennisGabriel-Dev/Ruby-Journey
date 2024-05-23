def method_keywords(city:, state:, zip:)
  puts "city: #{city}, state: #{state}, zip: #{zip}"
end

method_keywords(city: "Chicago", state: "IL", zip: "60606") # city: Chicago, state: IL, zip: 60606


def method_keywords(city:, state: "SP", zip:)
  puts "city: #{city}, state: #{state}, zip: #{zip}"
end
# keyword with default value doesn't need be call
method_keywords(city: "São Paulo", zip: "80808") # city: São Paulo, state: SP, zip: 80808