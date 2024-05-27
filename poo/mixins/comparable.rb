class Person
  include Comparable
	attr_reader :name

	def initialize(name)
		@name = name
	end

	def to_s
		"#{@name}"
	end

	def <=>(other)
		self.name <=> other.name
	end
end

p1 = Person.new("Matz")
p2 = Person.new("Guido")
p3 = Person.new("Larry")

if p1 > p2
	puts "#{p1.name}'s name > #{p2.name}'s name"
end
list = [p1, p2, p3]
puts "Sorted list:"
puts list.sort
puts "=== MIN value: ==="
puts list.min
puts "=== MAX value: ==="
puts list.max
=begin
output:
	Matz's name > Guido's name
	Sorted list:
	Guido
	Larry
	Matz
  === MIN value: ===
  Guido
  === MAX value: ===
  Matz
=end