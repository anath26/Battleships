require './board.rb'
# require 'board'


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
    # @ships = [4,6]
  end

  def place_ships
    new_board=Board.new(@player)
    @board=new_board.generate_board
    self.ships
    
    rand_rows = (0..9).to_a
    rand_cols = (0..9).to_a

    until @ships.empty?
      rand_row = rand_rows.shuffle.pop
      rand_col = rand_cols.shuffle.pop

      next_ship = @ships.shuffle!.pop
      ship_orientation = @orientation.sample
      build_ship next_ship, ship_orientation, rand_row, rand_col
      @ships
    end
    @board

    x = 0
    until x == 9
      print @board[x].to_s + "\n"
      x += 1
    end
  
  end

  def build_ship ship_length, orientation, rand_row, rand_col
    # rand_row,rand_col=rand(10),rand(10) # selecting a random grid location, eg [6,5]
    print "[#{rand_row} , #{rand_col}] #{orientation} \n"
    @board[rand_row][rand_col]="s"
     until ship_length == 0
      # puts "ship_length #{ship_length} #{orientation}"
      @board[rand_row][rand_col += 1]="s" if orientation == :horizontal
      @board[rand_row+1][rand_col]="s" if orientation == :vertical
      ship_length -= 1
     end
  
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

player = Player.new("G")
player.place_ships

