require "spec_helper"

describe TowersOfHanoi::Board::Base do
  let(:base) { TowersOfHanoi::Board::Base.new }

  it "defaults to a width of 3" do
    expect(base.width).to eq 3
  end
end
