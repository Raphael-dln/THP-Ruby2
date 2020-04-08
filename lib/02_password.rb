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

puts "Vous accédez à la page secrète de la NASA !"
end

def perform
  define_password
  login
end

perform