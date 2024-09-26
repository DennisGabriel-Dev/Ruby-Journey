def method_with_keyword(city:, state:, zip:)
  "I live in #{city}, #{state}, #{zip}"
end

p method_with_keyword(state: "MA", zip: "656200000", city: "Coelho Neto")

data = {state: "MA", zip: "656200000", city: "Coelho Neto"}
p method_with_keyword(**data)

city = "Coelho Neto"
state = "Maranhão"
zip = "65620000"
p method_with_keyword(city:, state:, zip: )
p method_with_keyword(**{city: "NY", zip: "1111111", state: "CA"})
