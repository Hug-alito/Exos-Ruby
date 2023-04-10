puts "Quel âge as-tu ?"
age = gets.chomp.to_i
nb = age + 1
age_date = 0
puts "Ok c'est parti !"

nb.times do |index|
  annee = 2023 - age
  if age_date == 0 
    puts "En #{annee}, tu venais de naître !"
    age = age - 1
    age_date = age_date + 1
  else
    if age_date == nb - 1
      puts "Cette année, tu as eu ou tu vas fêter tes #{age_date} ans !"
    else
      if age_date == age
        puts "En #{annee}, il y a #{age} ans, tu avais la moitié de l'âge que tu as aujourd'hui soit #{age_date} ans !"
        age = age - 1
        age_date = age_date + 1
      else
        puts "En #{annee}, il y a #{age} ans, tu avais #{age_date} ans"
        age = age - 1
        age_date = age_date + 1
      end
    end
  end
end