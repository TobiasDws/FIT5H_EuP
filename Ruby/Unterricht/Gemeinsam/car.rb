class Driver
	attr_accessor :name
	def initialize(name)
		@name = name
		@cars= []
	end
	def add_cars(car)
		@cars << car
	end
	def show_cars
		@cars.each do |car|
			puts car.typ
		end
	end
end



class Car
	attr_accessor :verbrauch
	attr_reader :typ, :ps

	def initialize(ps, typ="")
		@ps = ps
		@typ = typ
	end

	def ps=(ps)
		@ps = ps if ps > 0
	end

	def typ=(typ)
		if !typ.is_a?(String)
			puts "war kein String"
		elsif typ.size < 3
			puts "String zu kurz"
		else
			@typ = typ.capitalize
		end
	end

	def beschleunigen(zeit)
		geschwindigkeit = @ps * zeit / 100
		puts "Die Geschwindigkeit beträgt nun: #{convert_to_kmh(geschwindigkeit)}km/h."
	end

	private
		def convert_to_kmh(var)
			var * 3.6
		end
end

car1 = Car.new(200, 'Klaumich')
car2 = Car.new(80, 'Hauni')
car3 = Car.new(100)

cars = [car1, car2, car3]
cars.each do |car|

	#puts car.typ.empty? ? "Kein Wert" : car.typ
end

vals = {'BMW' => 200, 'trabbi' => 150, 'Honda' => 20}
cars2 = []
vals.each do | typ, ps|
	cars2 << Car.new(ps, typ)
end

#puts cars2.inspect
#puts cars2[1].typ

theo = Driver.new('Theo')
theo.add_cars(cars[0])
theo.add_cars(cars2[0])
theo.show_cars