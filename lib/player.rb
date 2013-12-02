class Player

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

  # Tells us if there are still ships that have not been hit
  # on her/his board.
  def has_ships_still_floating?
  end

  # Shoots at the opponents board.
  def shoot(at_coordinates, opponent_board)
  end
end