def half_pyramid
    puts "Dis moi combien d'étages tu veux à ta pyramide"
    print "> "
    etages = gets.chomp.to_i
    brick = "#"
    vide = " "
    pyramide = []

    etages.times do |level|
        pyramide[level] = vide * (etages - (level + 1)) + brick * (level + 1)
    end
    return pyramide
end

def full_pyramid
  pyramide = half_pyramid
  etages = pyramide.size
  etages.times do |level|
    marche = pyramide[level] +"#" * level
    pyramide[level] = marche
  end
  puts pyramide
end 
  

def perform
  half_pyramid
  full_pyramid
 
end

perform