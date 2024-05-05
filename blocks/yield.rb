def hi_user(name= "guy")
  yield(name)
end

hi_user("Gabriel") { |user_name| puts "Hi #{user_name}"}

hi_user {puts "Hi #{_1}"}