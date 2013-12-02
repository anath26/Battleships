class Board

  def initialize name
    @owner = name
    @board #....make board
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

end