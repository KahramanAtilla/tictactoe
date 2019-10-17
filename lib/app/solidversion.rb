 require 'bundler'
Bundler.require

  class BoardCase
    attr_accessor :value

    def initialize(letter =" ")
      @value = letter
    end
  end

  class Board
    attr_accessor :board_array

    def initialize
      @board_array =[]
      i = 0
      while i < 9
        @board_array.push(BoardCase.new())
        i += 1
      end
    end

    def to_s
      list = []
      @board_array.each {|x| list.push(x.value)}
        "|%s|%s|%s|\n|%s|%s|%s|\n|%s|%s|%s|" % list
    end

    def pos_from_array(letter, pos)
      pos.split('')
      step = 0
      if pos[0] == 'B'
        step = 3
      elsif pos[0] == 'C'
        step = 6
      else
        step = 0
      end
      i = pos[1].to_i + step - 1
      @board_array[i].value = letter
    end
end

  class Player
    attr_accessor :name, :sign, :vic

    def initialize(name, sign)
      @name = name
      @sign = sign
      @vic = false
    end
  end

  class Game
    attr_accessor :p1, :p2, :board, :empty
    
    def initialize()
      @board = Board.new()
      @empty = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]
    end

    def start_game
      nb_selec = 1
      playing = 0
      win_message = false

    puts "----------------------"
    puts "-----tic-tac-toe------"
    puts "----------------------"

    puts "Quel est le prenom de p1"
    print ">"
    n1 = gets.chomp
    puts "Quel est le prenom de p2"
    print ">"
    n2 = gets.chomp

    @p1 = Player.new(n1, "X")
    @p2 = Player.new(n2, "O")


end
end

Game.new.start_game
