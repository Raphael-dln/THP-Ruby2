def range
  $dice = rand (1..6) # fonction pour que l'ordinateur fasse un lancé de dé au hasard entre 1 et 6
  puts "Vous avez fait un #{$dice} !"
end

def game   # PROBLEME : CA PART EN NEGATIF
  step = 0
  while step != 10 # condition arriver à 10
  
      puts "Vous descendez d'une marche."
      puts "Vous êtes sur la marche #{step -1}"
      step = step -1
    elsif $dice == 2 || 3 || 4
      puts "Vous restez sur la même marche."
      puts "Vous êtes sur la marche #{step}."
      step = step
    else $dice == 5 || 6
      puts "Vous montez d'une marche !"
      puts "Vous êtes sur la marche #{step +1}."
      step = step +1
    end
    puts range # tant qu'on est pas au step 10, relancer la méthode "range"
  end
end

def win
  puts " Bravo tu as réussi !!"
end

def perform
  range
  game
  win
end

perform