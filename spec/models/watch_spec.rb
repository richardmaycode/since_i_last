require "rails_helper"

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

  describe "#goal_date" do
    it "returns the date when the goal will be reached" do
      watch = create(:watch, executed: @past_date)
      expect(watch.goal_date).to eq(watch.executed)
    end
  end

  describe "#days_remaining" do
    context "when goal == 0" do
      it "returns 0" do
        watch = create(:watch)
        expect(watch.days_remaining).to eq(0)
      end
    end

    context "when goal_date < Today" do
      it "returns 0" do
        watch = create(:watch, executed: Time.zone.now - 15.days, goal: 4)
        expect(watch.days_remaining).to eq(0)
      end
    end

    context "when goal_date > Today" do
      it "returns number of days remaining" do
        watch = create(:watch, executed: Time.zone.now - 5, goal: 15)
        expect(watch.days_remaining).to be > 0
      end
    end
  end
end
