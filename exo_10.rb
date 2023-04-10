puts "À partir de quelle année veux-tu connaître tes âges par an ?"
annee = gets.chomp.to_i
nb = 2023 - annee + 1 
age = 0
puts "Ok c'est parti !"
puts "#{nb}"
nb.times do |index|
  puts "En #{annee}, tu avais #{age}"
  age = age + 1
  annee = annee + 1
  nb = nb-1
end