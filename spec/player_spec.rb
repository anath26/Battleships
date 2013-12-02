require 'player'

describe 'Player' do

let(:player) {Player.new("Anath")}

it 'should have a player' do
  player
  expect(Player.player_count).to eq(1)

end





end