i = 0
puts "Jusqu'à quel nombre ou chiffre dois-je compter ?"
nb = gets.chomp.to_i
puts "Ok c'est parti !"
nb.times do |index|
  i = i + 1
  puts "#{i}"

end