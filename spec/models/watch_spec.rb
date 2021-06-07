require 'rails_helper'

RSpec.describe Watch, type: :model do
  before(:all) do
    @future_date = Time.zone.now + 3.days
    @past_date = Time.zone.now - 3.days
  end

  describe "#executed_cannot_be_in_the_future" do
    context "when submitted with a future date" do
      it "will be invalid" do
        expect(build(:watch, executed: @future_date)).to be_invalid
      end
    end
  end

  describe "#days_since_execution" do
    it "returns number of days based on current date" do
      expect(create(:watch, executed: @past_date).days_since_execution).to eq(3)
    end
  end
end
