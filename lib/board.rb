class Board

  def initialize player
    @player = player
  end

  def owner
    @player
  end

  def generate_board
    @board=Array.new(10).map! { Array.new(10,"=") }
  end

  def register_shot at_coordinates
    @board
    letter,*number = at_coordinates.split('')
    number=number.join
    letters=("A".."J").to_a
    numbers=("1".."10").to_a
    return "Invalid coordinates!" unless letters.include?(letter)
    return "Invalid coordinates!" unless numbers.include?(number)
    x=letters.index(letter)
    y=numbers.index(number)
    # @board[x][y]
    p "#{y} #{x}"
  end

  def rows
    @board
  end

  def opponent_view
    @board.each_with_index {|row,index| row[index]="" if row[index]=="s" }
  end

end
p Board.new("G").rows














