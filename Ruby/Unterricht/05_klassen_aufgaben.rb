class Player
	def initialize(name, health=100 )
		@name = name
		@health = health
	end

	def list_player
		"#{@name}: #{@health}"
	end

	def say_hello
		"Ich bin #{@name} mit einem wert von #{@health}."
	end

	def blam
		@health = @health + 10
		puts "#{@name} got blamed: #{@health}"
	end

	def w00t
		@health = @health - 10
		puts "#{@name} got w00ted: #{@health}"
	end

end

player1 = Player.new("Bob", 80)
puts player1.say_hello

player2 = Player.new("Hans")
puts player2.list_player

player1.blam

player2.w00t
