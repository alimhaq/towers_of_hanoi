require 'Towers_of_Hanoi'
require 'rspec'

# [[1, 2, 3, 4], [], []]
describe TowersOfHanoi do
  let(:brd) { Board.new }

  describe "initialize" do
    it "initializes the board" do
      expect(brd.class).to eq(Board)
    end

    it "initializes the three towers with their respective elements" do
      expect(brd.tower1).to eq([1,2,3,4])
      expect(brd.tower2).to eq([])
      expect(brd.tower3).to eq([])
    end
  end

  describe "#move" do
    it "shifts the first element from the selected array to another array" do
      brd.move(brd.tower1, brd.tower2)
      expect(brd.tower1).to eq([2,3,4])
      expect(brd.tower2).to eq([1])
    end

    it "doesn't shift an element if it is an invalid move" do
      brd.move(brd.tower2, brd.tower1)
      expect(brd.tower1).to eq([1,2,3,4])
      expect(brd.tower2).to be_empty
    end
  end

  describe "#won" do
    it "when the game is won" do
      brd.tower1 = []
      brd.tower2 = [1, 2, 3, 4]
      expect(brd).to be_won
    end
  end
end
