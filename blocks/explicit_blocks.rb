class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end

  def use_proc(param)
    @stored_proc.call(param)
  end
end

pe = ProcExample.new
pe.pass_in_block { |param| puts "Param: #{param}"}
pe.use_proc("dennis")

## OR 

def create_block_object(&block)
  block
end

bo = create_block_object {|param| puts "You called method create_block_object with param #{param}"}
bo.call("Slipknot")

## All cases down, produces a Proc object, this mean that it stored data

## USING LAMBDA
stabby_lambda = ->(param) {puts "Called: #{param}"} # or lambda {|lambda| puts "Called #{param}"}
stabby_lambda.call("Metallica")
stabby_lambda.call("Slayer")

## USING PROC
proc = proc {|param| puts "Called proc: #{param}"}
proc.call(100)
# or
proc = Proc.new {|param| puts "Calling proc param: #{param}"}
proc.call("proc new")

def power_proc_generator
  value = 1
  -> { value += value}
end
power = power_proc_generator
puts power.call # 2
puts power.call # 4
puts power.call # 8