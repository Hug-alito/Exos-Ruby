puts "Quelle est ta date de naissance ?"
annee = gets.chomp.to_i
puts "Ok c'est parti pour voir le nombre d'années parcourues !"
(2023 - i + 1).times do |index|
  puts "#{annee}"
  annee = annee + 1
end