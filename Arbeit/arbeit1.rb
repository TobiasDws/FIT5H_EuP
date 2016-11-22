class Bibliothek
	attr_accessor :buecher
	attr_reader :name

	def initialize(name)
		@buecher = []
		@name = name
	end

	def add_book(buch)

		@buecher << buch
	end

	def ausgabe
		@buecher.each do |buch|
			puts "Maier, #{buch.title}, #{buch.gekauft_am}"
		end
	end


	def buch_aktion

		jetzt = 2014

		@buecher.each do |buch|
			if jetzt - 2 > buch.gekauft_am
				puts "Inkontrolle\n Maier, #{buch.title}, #{buch.gekauft_am}\n"
			elsif jetzt - 5 > buch.gekauft_am
				puts "in Restauration\n Maier, #{buch.title}, #{buch.gekauft_am}\n"
			else 
				puts "Keine Aktion\n Maier, #{buch.title}, #{buch.gekauft_am}\n"
			end
		end

	end


	def verliehen

		@buecher.each do |buch|

			if buch.verlei = 1
				puts "#{buch.title} dieses buch ist ausgeliehen" 
			else
				puts "#{buch.title} dieses buch ist nicht ausgeliehen"
			end
		end
	end	



end


class Buch
	attr_accessor :autor, :gekauft_am, :title, :verlei

	def initialize(title, gekauft_am, verlei)
		@verlei = verlei
		@title = title
		@autor = []
		@gekauft_am = gekauft_am
	end
	def add_autor(autor)
		@autor << autor
	end
end

class Autor
	attr_reader :name
	attr_reader :geburtstag 

	def initialize(name, geburtstag)
		
		@name = name
		@geburtstag = geburtstag
	end

end

bibliothek = Bibliothek.new('Hamburg')
autor_1 = Autor.new('Maier', '20.3.1980')
buch_1 = Buch.new('Niemand', 2005, 1)
buch_2 = Buch.new('Jeder', 2010, 0)
buch_3 = Buch.new('Immer wieder gerne', 2013, 0)
buch_4 = Buch.new('Morgen ist auch noch ein Tag', 2011, 1)

buecher = [buch_1, buch_2, buch_3, buch_4]


bibliothek.add_book(buecher[0])
bibliothek.add_book(buecher[1])
bibliothek.add_book(buecher[2])
bibliothek.add_book(buecher[3])
bibliothek.verliehen