i = 0
j = 0

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
nb_etg = gets.chomp.to_i
while nb_etg < 1 || nb_etg > 25
  puts "Ne te fous pas de ma gueule et redonne un nombre valable entre 1 et 25 max"
  nb_etg = gets.chomp.to_i
end
puts "Ok Zééé partiiiii"
while j < nb_etg
  i = 0
  j = j + 1
  while i < j
    printf "#"
    i = i + 1
  end
  printf "\n"
end

