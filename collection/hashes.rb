first_name = "dennis"
last_name = "dev"
user = {first_name: first_name, last_name: last_name} #{:first_name=>"dennis", :last_name=>"dev"}

# when the key is the same name of the value, you can ignore it
user2 = {first_name:, last_name:} # this will be produce the same result as the above case: {:first_name=>"dennis", :last_name=>"dev"}

p user
p user2

hash = {dog: "canine", cat: "feline"} #{:dog=>"canine", :cat=>"feline"}
hash2 = {:dog => "canine", :cat => "feline"} # this will produce the same result as the above case: {:dog=>"canine", :cat=>"feline"}

p hash
p hash2