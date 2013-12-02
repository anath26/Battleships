# require './board.rb'
require 'board'


class Player

DEFAULT_CAPACITY = 10

  @@player_count=0
  # Initializes a new player with her/his name.
  #
  # You will have to create a board in there and randomize the
  # positioning of your ships on the board.
  def initialize name
    @player = name
    @@player_count+=1
  end

  def self.player_count
    @@player_count
  end

  def ships
    @orientation = [:vertical, :horizontal]
    @ships = [2,2,2,2,3,3,3,4,4,6]
  end

  def place_ships
    new_board=Board.new(@player)
    @board=new_board.generate_board
    self.ships
    until @ships.empty?
      next_ship = @ships.shuffle!.pop
      ship_orientation = @orientation.sample
      build_ship next_ship, ship_orientation
      @ships
    end
    @board
  end

  def build_ship ship_length, orientation
    rand_row,rand_col=rand(10),rand(10) # selecting a rndom grid location, eg [6,5]
    @board[rand_row][rand_col]="s"
    #do this ship_length number of times ... --------------->
    @board[rand_row][rand_col+1]="s" if @orientation == :horizontal
    @board[rand_row+1][rand_col]="s" if @orientation == :vertical
    #<----------------------------------
    @board
  end

  # Tells us if there are still ships that have not been hit
  # on her/his board.
  def has_ships_still_floating?
  end

  # Shoots at the opponents board.
  def shoot(at_coordinates, opponent_board)
  end
end

# player = Player.new("G")
# p player.ships
# p player.place_ships

