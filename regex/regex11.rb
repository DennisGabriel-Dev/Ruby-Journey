def mixed_case(name)
  # name.downcase.gsub(/\b\w/) { |first| first.upcase}
  name.downcase.gsub(/\b\w/, &:upcase)
end

puts mixed_case("NEW YORK")
puts mixed_case("new york")
puts mixed_case("nEW yORK")
# OUTPUT:
# New York
# New York
# New York

replacement = {"cat" => "feline", "dog" => "canine"}
replacement.default = "unknown"

puts "cat and dog".gsub(/\w+/, replacement)
# OUTPUT:
# feline unknown canine
