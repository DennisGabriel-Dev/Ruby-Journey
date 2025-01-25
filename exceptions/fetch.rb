require "open-uri"

file_name = "pattern_matching_rdoc.html"
begin
  URI.open("https://docs.ruby-lang.org/en/3.0/syntax/#{file_name}") do |web_page|
    output = File.open(file_name, "w")
    begin
      while( line = web_page.gets )
        output.puts line
      end
      output.close
    rescue StandardError
      $stderr.warn "Failed to download #{file_name}: #{$!}"
      output.close
      File.delete(file_name)
      raise
    end
  end
rescue OpenURI::HTTPError => e
  puts "Failed to download #{file_name}: #{e}"
  retry # retry comand, called the block again. Exercise caution when using this
else
  puts "Else is executed only success, if code returns a raise, this clause is not executed"
ensure
  puts "Finish of the search, ensure clause is executed all of times, regardless of an error or not"
end
