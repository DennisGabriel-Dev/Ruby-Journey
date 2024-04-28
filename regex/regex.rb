line = gets

if line.match? /Ruby|Rust/ # the same line =~ /Ruby|Rust/
    puts "Programming language mentioned: #{line}"
end