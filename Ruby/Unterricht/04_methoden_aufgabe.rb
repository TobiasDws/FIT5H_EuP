
def time
	Time.now.strftime("%H:%M")
end

def say_hello (name, health=0)

	if not name
		name = "Unbekannt"
	end
	if not health
		health = 0
	end

	"Ich bin #{name} mit einem wert von #{health} um #{time}."
end

puts say_hello("Cathy")
puts say_hello("Michelle", 80)
puts say_hello("Ankratin",20)
puts say_hello(ARGV[0], ARGV[1])