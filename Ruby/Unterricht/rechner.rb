#Erstellen Sie eine Klasse Calculator mit einem Konstruktor, der zwei zahlen entgegennimmt und in Instanzvariablen speichert.
#Eine Methode add, und eine Methode subtract führt eine Addition und eine Substraktion durch und gibt das Ergebnis zurueck.
#Legen Sie ein Objekt an und wenden Sie die Methoden add und subtract an.

class Calculator



	def initialize(zahl1, zahl2)

		@zahl1 = zahl1
		@zahl2 = zahl2

	end

	def add

		ergebnis_add = @zahl1 + @zahl2
		"#{ergebnis_add}"

	end
 	def sub

 		ergebnis_sub = @zahl1 - @zahl2
 		"#{ergebnis_sub}"
	end


end


obj = Calculator.new(24, 12)
puts obj.add
puts obj.sub