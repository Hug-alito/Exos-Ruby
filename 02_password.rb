# Affiche une chaîne de caractères avec un délai de 0.03 seconde entre chaque caractère
def write(str)
  str.each_char do |char|
    print char
    sleep 0.03
  end
end

# Affiche une chaîne de caractères avec un délai de 0.50 seconde entre chaque caractère
def write_long(str)
  str.each_char do |char|
    print char
    sleep 0.50
  end
end

# Efface l'écran après un délai de 5 secondes
def clear_screen
  sleep 5
  print "\e[2J\e[H"
end

# Efface l'écran après un délai de 1 seconde
def clear_screen_short
  sleep 1
  print "\e[2J\e[H"
end

# Efface l'écran après un délai de 0,01 seconde!
def clear_screen_ultra_short
  sleep 0.01
  print "\e[2J\e[H"
end

# Demande à l'utilisateur son nom et son mot de passe, et renvoie le mot de passe
def signup
  write("Définissez un mot de passe : ")
  password = gets.chomp
  clear_screen_ultra_short
  return password
end

# Demande à l'utilisateur de saisir son mot de passe et renvoie la saisie
def login
  write("Entrez votre mot de passe : ")
  check = gets.chomp
  puts ""
  clear_screen_ultra_short
  return check
end

# Vérifie si le mot de passe saisi correspond au mot de passe enregistré, avec un maximum de 3 essais
def pw_verification(password, check)
  essais_max = 3
  for i in 1..essais_max
    if password == check
      welcome_screen
      return true
    else
      puts "Mot de passe erroné. #{essais_max - i} essais restants. Veuillez réessayer."
      check = login
    end
  end
  return false
end

# Affiche un écran de bienvenue avec le nom de l'utilisateur et un message de destruction imminente
def welcome_screen
  progress_bar = "█"
  progress_bar_length = 76

  write("Chargement en cours")
  write_long("...\n")
  write("#{progress_bar * progress_bar_length} 100%\n\n")
  write("█████████████████████████████████████████████████████████████████████████████████\n")
  write("█████████████████ BIENVENUE SUR VOTRE ÉCRAN TOP TOP TOP SECRET.██████████████████\n")
  write("█████████████████████████████████████████████████████████████████████████████████\n")
  puts ""
  write("Votre prochaine cible à exécuter est ☻")
  write_long(" ... ")
  write("Afida ")
  sleep 1
  write("Turner.\n\n")
  write("Classe de la cible : 'Extrêmement dangereuse'.\n")
  write("Carte blanche pour le choix de l'élimination.\n")
  write("Nous prendrons en charge les éventuels dommages collatéraux.\n")
  puts ""
  write("Information diffusée pendant 5 secondes. Autodestruction programmée.\n")
  end

  def perform
    password = signup
    check = login
    if pw_verification(password, check)
      write("Merci de procéder à l'élimination sous 24h. ✞\n\n")
      write("█████████████████████████████████████████████████████████████████████████████████\n")
      printf("                                                                  \u00A9 Tueurs à gogo")
      clear_screen
    else
      write_long("GROS")
      sleep 0.5
      printf(" DÉBILE.\n")
      sleep 1
      write("Bye.\n")
      clear_screen_short
    end
    puts "✾ ✿ ❀ ❁ ❂ ❃ ❆ ❈ ❊ ❋ Il ne s'est jamais rien passé ici. :) ✽ ✻ ✸ ✱ ✲ ✵ ✶ ✻ ✼ ✽"
  end
    
    perform
