require_relative 'Player'

class Game
  attr_accessor :j1, :j2, :board
  
  def start
    puts '--------------------'
    puts '----tic-tac-toe-----'
    puts '--------------------'
    puts "quel est le nom du player1"
    l = gets.chomp
    puts "Quel est le nom du player2"
    u = gets.chomp

    @j1 = Player.new(l, "X")
    @j2 = Player.new(u, "O")

    b = [a1 = " ", a2 = " ",a3 = " ", b1 = " ", b2 = " ", b3 = " ", c1 = " ", c2 = " ", c3 = " "]
 i = 0
    already_did = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]
	 
	 while i < 50
				puts "Voici le board"
     print b[0..2]
     print "\n"
     print b[3..5]
     print "\n"
     print b[6..8]
     print "\n"
 ############----------------------------------------
    puts "a toi de jouer #{@j1.name}"
    sp = gets.chomp.upcase
       while not  already_did.include?(sp)
        puts "case deja rempli ou inexistance, choissisez une autre"
        sp = gets.chomp.upcase
        end
      already_did.delete(sp)

      if sp[0] == 'B'
        add = 3
      elsif sp[0] == 'C'
        add = 6
      else
        add = 0
      end

 finn = sp[1].to_i + add - 1
   b[finn] = "X"

  print b[0..2]
     print "\n"
     print b[3..5]
     print "\n"
     print b[6..8]
     print "\n"

     if b[0] == "X" && b[1] == "X" && b[2] == "X" ||
        b[3] == "X" && b[4] == "X" && b[5] == "X" ||
	b[6] == "X" && b[7] == "X" && b[8] == "X" ||

	b[0] == "X" && b[3] == "X" && b[6] == "X" ||
	b[1] == "X" && b[4] == "X" && b[7] == "X" ||
	b[2] == "x" && b[5] == "X" && b[8] == "X" ||

	b[0] == "X" && b[4] == "X" && b[8] == "X" ||
	b[2] == "X" && b[4] == "X" && b[6] == "X"
	  print "================== VICTOIRE DE #{@j1.name} ======================="
	   break
     end

     puts "a toi de jouer #{@j2.name}"
	sp = gets.chomp.upcase
	while not already_did.include?(sp)
	  puts "case deja pleine ou inexistante, choisissez un autre"
	  sp = gets.chomp.upcase
	end
	already_did.delete(sp)
    if sp[0] == 'B'
      add = 3
    elsif sp[0] == 'C'
      add = 6
    else
      add = 0
    end
 finn = sp[1].to_i + add - 1
   b[finn] = "O"


	if b[0] == "O" && b[1] == "O" && b[2] == "O" ||
        b[3] == "O" && b[4] == "O" && b[5] == "O" ||
	b[6] == "O" && b[7] == "O" && b[8] == "O" ||

	b[0] == "O" && b[3] == "O" && b[6] == "O" ||
	b[1] == "O" && b[4] == "O" && b[7] == "O" ||
	b[2] == "O" && b[5] == "O" && b[8] == "O" ||

	b[0] == "O" && b[4] == "O" && b[8] == "O" ||
	b[2] == "O" && b[4] == "O" && b[6] == "O"
	  print "======================VICTOIRE DE #{@j2.name} ======================="
	   break
     end
  end
end
end
Game.new.start
