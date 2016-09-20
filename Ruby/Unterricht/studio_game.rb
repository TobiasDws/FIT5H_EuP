name1 = "larry"
health = 70
puts "#{name1}\'s health is #{health}" 
puts "#{name1}\'s health is #{health *3}"

puts""
newhealth = health.to_f / 9
puts "#{name1}\'s health is #{newhealth.to_i}"
puts "#{name1}\'s health is #{newhealth.to_f}"

puts""
puts "\tPlayers:\n\t\t#{name1}\n\t\tcurly\n\t\tmoe"

name2 ="curly"
name3 ="moe"

puts "\tPlayers:\n\t\t#{name1}\n\t\t#{name2}\n\t\t#{name3}"

allname = <<heredoc

Players:
	#{name1}
	#{name2}
	#{name3}

heredoc
puts allname