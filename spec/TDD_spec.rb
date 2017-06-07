require 'TDD'
require 'rspec'

describe "#my_uniq" do
  it "returns a new array of unique elements" do
    expect([1, 1].my_uniq).to eq([1])
  end

  it "returns a new array of unique elements for multiples" do
    expect([1, 1, 2, 2].my_uniq).to eq([1, 2])
  end

  it "doesn't remove already unique elements" do
    expect([1, 2, 2].my_uniq).to eq([1, 2])
  end

  it "returns an empty array if no elements present" do
    expect([].my_uniq).to eq([])
  end
end

describe '#two_sum' do
  it "returns an array of pairs for one pair" do
    expect([1, -1].two_sum).to eq([[0, 1]])
  end

  it "returns an array of pairs for multiple pairs" do
    expect([-1, 0, 2, -2, 1].two_sum). to eq([[0, 4], [2, 3]])
  end

  it "returns an empty array if no pairs" do
    expect([3, 1, -2, 4].two_sum).to eq([])
  end
end

describe "#my_transpose" do
  it "returns a transposed array given a 2 x 2 array" do
    expect([[1, 2], [3, 4]].my_transpose).to eq([[1, 3], [2, 4]])
  end

  it "returns a transposed array given a 3 x 3 array" do
    expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end

describe '#stock_picker' do
  it "returns an array of the most profitable pair of days" do
    expect([2, 5, 1, 9, 3, 20, 10].stock_picker).to eq([2, 5])
  end

  it "returns the earlier pair of days if the profit is the same between pairs" do
    expect([2, 21, 5, 1, 9, 3, 20, 10].stock_picker).to eq([0, 1])
  end
end

describe "#craziness" do
  let(:str) { "dog" }
  it "should upcase whole string" do
    expect(str).to eq("DOG")
  end

  it "should grab the first letter" do
    expect(str).to eq("DOG")
  end

  it "should return the next letter in the alphabet"
end
