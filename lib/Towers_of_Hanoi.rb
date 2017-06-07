SLATES = {1 => "\u258F",
  2 => "\u258E",
  3 => "\u258D",
  4 => "\u258C"
}

class TowersOfHanoi
  def initialize
    @board = Board.new
  end

  def run
    puts "WELCOME TO THE TOWER OF HANOI" ; sleep(1)
    puts "Please enjoy your stay ;)" ; sleep(1)
    @board.render
    until @board.won?
      print "Please enter tower number you want to move a slate from: "
      slate_from = gets.chomp.to_i
      print "Please enter tower you want to move a slate to: "
      slate_to = gets.chomp.to_i
      @board.move(@board.grid[slate_from - 1], @board.grid[slate_to - 1])
      @board.render
    end
    puts "CONGRATULATIONS...you have made out of the TOWER OF HANOI :o"
  end
end

class Board

  attr_accessor :tower1, :tower2, :tower3, :grid

  def initialize
    @tower1 = [1,2,3,4]
    @tower2 = []
    @tower3 = []
    @grid = [@tower1, @tower2, @tower3]
  end

  def move(tower_a, tower_b)
    tower_b.unshift(tower_a.shift) unless tower_a.empty?
  end

  def won?
    return true if tower2.length == 4 && sorted?(tower2)
    return true if tower3.length == 4 && sorted?(tower3)
    false
  end

  def sorted?(tower)
    tower == tower.sort
  end

  def render
    print "TOWER 1: "
    @tower1.each do |slate|
      print SLATES[slate]
    end
    puts
    print "TOWER 2: "
    @tower2.each do |slate|
      print SLATES[slate]
    end
    puts
    print "TOWER 3: "
    @tower3.each do |slate|
      print SLATES[slate]
    end
    puts
  end
end

if __FILE__ == $PROGRAM_NAME
  game = TowersOfHanoi.new
  game.run
end
