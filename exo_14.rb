nb = 50
a = 0
array = []
puts "Création des emails"
nb.times do |i|
  a = a + 1
  if a < 10
    array << "jean.dupont.0#{a}@email.fr"
  else
    array << "jean.dupont.#{a}@email.fr"
  end
  if a.even? == true
    puts array.at(i)
  end
end

