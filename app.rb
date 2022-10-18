require 'bundler'
Bundler.require

require_relative 'lib/game'

require_relative 'lib/player'

  player_1 = Player.new("josé")
  
  player_2 = Player.new ("josiane")
 
    puts "Voici l'état du joueur : #{player_1.show_state}"
    puts "Voici l'état de chaque joueur : #{player_2.show_state}"
while player_1.life_point >0 && player_2.life_point >0
    if
        @name == 0 
        break
    end
    puts "Passons à la phase d'attaque :"
  player_2.attack(player_1)
  player_1.attack(player_2)
  end
  


  
