require "rails_helper"

describe Map do
  it "should have a factory" do
    expect(FactoryGirl.build(:map)).to be_valid
  end

  context "validations" do
    it { should validate_uniqueness_of(:gameid) }
    it { should validate_presence_of(:name) }
  end
end