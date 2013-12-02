class Board

  def initialize player
    @player = player
  end

  def owner
    @player
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
    empty_string=["","","","","","","","","",""]
    @board={1 => empty_string,
            2 => empty_string,
            3 => empty_string,
            4 => empty_string,
            5 => empty_string,
            6 => empty_string,
            7 => empty_string,
            8 => empty_string,
            9 => empty_string,
            10 => empty_string}
    @board.values

  end

  def opponent_view
    @board.each_with_index {|row,index| row[index]="" if row[index]=="s" }
  end

end
p Board.new("G").rows
# board = [["s", "x", "o", "o", "", "s"], ["s", "s", "x", "o", "o", ""]];

# board.map do |row|
#   row.map! do |element|
#     element="" if element=="s"
#     element
#   end
# end

# p board













