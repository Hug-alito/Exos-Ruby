puts "À partir de quel nombre dois-je compter à rebours ?"
nb = gets.chomp.to_i
puts "Ok c'est parti pour le décompte !"
puts "#{nb}"
nb.times do |index|
  nb = nb-1
  puts "#{nb}"
end