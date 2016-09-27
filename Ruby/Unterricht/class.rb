class Player

	def initialize(name, health=100)
		@name = name
		@health = health
		
	end

	def to_s
		"#{@name} hat einen gesundheitswert von #{@health}"

	end

	def w00t
		@health +=10
	end

	def blaim
		@health -=10
	end

end

player1 = Player.new("Janz", 5000)
puts player1
player1.w00t
puts player1

player2 = Player.new("Schmid")
puts player2
player2.blaim
puts player2

