list = ['dennis', 'gabriel', 'dev']


# the operator !~ is executed when the regex does not match

list.each do |word|
  puts word if word !~ /de/ # gabriel
end