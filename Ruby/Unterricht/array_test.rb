array = ["Sommer", "Winter" , "Herbst"]
array.size

array << "fruehjahr"

array.pop

puts array.join(" und ")

puts array.shuffle.join(" und ")

puts "------------"

players = ["Larry", "Clury", "Moe"]

puts "Die Anzahl der Spieler ist #{players.size}"

players.each do |player|
	puts player
end