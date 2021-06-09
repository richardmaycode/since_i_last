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

  describe "#goal_reached?" do
    context "when goal_type == 'infinite'" do
      it "returns false" do
        expect(create(:watch).goal_reached?).to eq(false)
      end
    end

    context "when #days_remaining > 0" do
      it "returns false" do
        expect(create(:watch, executed: Time.zone.now - 2.days, goal: 15, goal_type: 1).goal_reached?).to eq(false)
      end
    end

    context "when #days_remaining <= 0 and goal_type != 'infinite'" do
      it "returns true" do
        expect(create(:watch, executed: Time.zone.now - 5.days, goal: 2, goal_type: 1).goal_reached?).to eq(true)
      end
    end
  end
end
