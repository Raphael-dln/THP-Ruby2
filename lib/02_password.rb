def define_password
  puts "Définissez un mot de passe"
  print "> "
  $password = gets.chomp
end

def login
  puts "Entrez votre mot de passe"
  print ">"
  $login = gets.chomp
  while $login != $password
    puts "Erreur, entrez à nouveau votre mot de passe"
    print ">"
    $login = gets.chomp
  end

puts "Vous allez maintenant accéder à la page secrète de la NASA !"
end

def welcome_screen
  if $password == $login
    puts " Information confidentielle #1"
    puts " L'Homme n'est jamais allé sur la Lune"
  end
end

def perform
  define_password
  login
  welcome_screen
end

perform