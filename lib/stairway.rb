def play
    $dice = rand(1..6)
    print "Tu as fait un #{$dice} !"
end

def game
    step = 0
    while step != 10
        puts play
        if $dice == 1
            puts "Tu recules d'une marche."
            step = (step - 1)
            puts "Tu retournes sur la marche #{step}"
            puts ""
        elsif $dice == 5 || $dice == 6
            puts "Tu avances d'une marche"
            step = (step + 1)
            puts "Tu es sur la marche #{step}"
            puts ""
        else $dice == 2 || $dice == 3 || $dice == 4
            puts "Tu ne changes pas de marche"
            step = step
            puts "Tu restes sur la marche #{step}"
            puts ""
        end
    end
    if step == 10
        puts "Bravo, tu as réussi !"
    end
end

def perform
    game
end

perform

