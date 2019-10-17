 require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'


  def orche
    player1 = Player.new("Josianne")
    player2 = Player.new("Jose")

    	while player1.life_points > 0 && player2.life_points > 0
    	  puts "Voici l'etat de chaque joueurs:"
    	  player1.show_state
    	  player2.show_state
	  puts " "
	  puts "Passons a la phase d'attaque"
	  player1.attacks(player2)
	    if player2.life_points <= 0
	      break
	    end
	  player2.attacks(player1)
	  puts " "
	end
  end

orche
