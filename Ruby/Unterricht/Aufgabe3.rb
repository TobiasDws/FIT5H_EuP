name1 = "Larry"
name2 = "Curly"
name3 = "Moe"
puts "----------------------------------------------------"
puts "#{name1} has a health of 60."
puts "#{name2} has a health of 125."
puts ""
2.times do
	puts "#{name3} has a health of 100".center(40,"*")
end
puts ""
2.times do
	puts "Shemp".ljust(31,".") + "90 health"
end
puts ""
allplayers = <<PLAY
Players:
	#{name1}
	#{name2}
	#{name3}
PLAY

puts allplayers
puts ""
puts "The Game Started on #{Time.now.strftime("%A %D at %H:%M %p")}"
puts "----------------------------------------------------"

