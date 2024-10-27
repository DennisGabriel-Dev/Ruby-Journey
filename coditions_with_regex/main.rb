date = ":"
if date =~ /(\d\d)-(\d\d)-(\d\d)/
  mon = Regexp.last_match(1)
  day = Regexp.last_match(2)
  year = Regexp.last_match(3)
end
