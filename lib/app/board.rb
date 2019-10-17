 require 'bundler'
Bundler.require


  class BoardCase
    attr_accessor :value

    def initialize(value =" ")
      @value = value
    end
  end

  class Board
    attr_accessor :arr

    def initialize()
      @arr = []
      9.times {@arr.push(BoardCase.new())}
    end

    def put_s
      arr2 = []
      @arr.each{|x| arr2.push(x.value)}
      "|%s|%s|%s|\n|%s|%s|%s|\n|%s|%s|%s|" % arr2
    end

    def put_all(value, pos)
      pos.split('')
      i = 0
      add = 0
      if pos[0] == 'B'
        add = 3
      elsif pos[0] == 'C'
        add = 6
      else
        add = 0
      end
      i = place[1].to_i-1 + add
      @arr[i].value = value
    end
end
      
