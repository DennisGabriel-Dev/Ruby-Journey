class Computer
  def split_apart(first= 'rails', *splat ,last)
    puts "first: " + first.inspect + ", Splat:" + splat.inspect+ ",last:" +  last.inspect
  end
end

Computer.new.split_apart('dennis', 'gabriel', 'dev', 'ruby') # first: "dennis", Splat:["gabriel", "dev"],last:"ruby"
Computer.new.split_apart('dennis') # first: "rails", Splat:[],last:"dennis"