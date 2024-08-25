puts `date`
puts `ls`.split[34]
puts `echo "hello there"`

(0..3).each do |_i|
  status = `dbmanager status id={i}`
end
# alias_method :old_backquote, :`
# def `(cmd)
#   result = old_backquote(cmd)
#   puts "*** Command #{cmd} failed: status = #{Process.last_status.exitstatus}" unless Process.last_status.success?
#   result
# end
print `ls -l /etc/passwd`
print `ls -l /etc/wibble`
