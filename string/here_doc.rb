string = <<END_OF_STRING
  The body of the string is the input lines up to
  one starting with the same text that followed the '<<'
END_OF_STRING

puts string


string_two = <<-END_OF_STRING # => this string is ident
  The body    of the string is the input lines up to
one starting with the same text that followed the '<<'
END_OF_STRING

puts string_two


string_three = <<~END_OF_STRING
  The body    of the string is the input lines up to
one starting with the same text that followed the '<<'
END_OF_STRING

puts string_three