puts "Combien de fois - 1 dois-je te demander 'Bonjour toi !'"
nb = gets.chomp.to_i
nb = nb - 1
nb.times do |index|
  puts "Bonjour toi !"
end