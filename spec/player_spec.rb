require 'player'
require 'board'


describe 'Player' do

  let(:player) {Player.new("Anath")}
  let(:board) {Board.new("Tom")}

  it 'should have a player' do
    player
    expect(Player.player_count).to eq(1)
  end

  it "should have a fully functional board" do
    board
    expect(board.generate_board.length).to eq(10)
    (0..9).to_a.each do |index|
      expect(board.generate_board[index].all? {|x| x==""}).to be_true
    end
  end

  it "should contain 10 ships" do
    player
    expect(player.ships.count).to eq(10)
  end

  it "should drop ships on the board " do
    player.place_ships
    expect(player.place_ships.flatten.count("s")).to eq(31)
  end

  it "should do something... " do

  end

end

# it "should description" do

# end