def show_regex(string, pattern)
  match = pattern.match string
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end

puts show_regex('very interesting', /t/) # very in->t<-eresting
puts show_regex 'Fats Waller', /lle/ # Fats Wa->lle<-r
puts show_regex 'Fats Waller', /z/ # no match

puts show_regex 'yes | no', /\|/ # yes ->|<-no
puts show_regex 'yes (no)', /\(no\)/ # yes ->(no)<-
puts show_regex 'are you sure?', /e\?/ # are you sur->e?<-
