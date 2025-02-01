def prompt_and_get(prompt)
  res = prompt.chomp
  throw (:quit_requested) if res == "!"
  res
end

res = catch(:quit_requested) do
  puts prompt_and_get("Dennis")
  puts prompt_and_get("!")
  puts prompt_and_get("Gabriel")
end


puts res if res
