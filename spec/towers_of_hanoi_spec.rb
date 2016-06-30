require "spec_helper"

describe TowersOfHanoi do
  it { is_expected.not_to be_nil }
  it "has a version assigned" do
    expect(TowersOfHanoi::VERSION).not_to be_nil
  end
end
