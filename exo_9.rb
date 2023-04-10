puts "Quelle est ta date de naissance ?"
annee = gets.chomp.to_i
i = annee
nb = 2023 - i + 1
puts "Ok c'est parti pour voir le nombre d'années parcourues !"
nb.times do |index|
  puts "#{i}"
  i = i + 1
end