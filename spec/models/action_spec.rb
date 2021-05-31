require "rails_helper"

RSpec.describe Action, type: :model do
  describe "#days_since_last_execution" do
    it "returns number of days since last execution" do
      action = create(:action, last_execution: Time.zone.now - 5.days)
      expect(action.days_since_last_execution).to eq(5)
    end
  end
  # describe "#goal_date" do
  #   context "with no goal set" do
  #     it "will return nil" do
  #       activity = create(:action, goal: nil)
  #       expect(activity.goal_date).to eq(nil)
  #     end
  #   end

  #   context "with a goal set" do
  #     it "will return a date" do
  #       activity = create(:action, last_execution: Time.zone.now, goal: 5)
  #       expect(activity.goal_date).to eq((Time.zone.now + 5.days).to_date)
  #     end
  #   end
  # end

  # describe "#days_remaining?" do
  #   context "with no goal set" do
  #     it "returns nil" do
  #       activity = create(:action, goal: nil)
  #       expect(activity.days_remaining?).to eq(nil)
  #     end
  #   end

  #   context "with a goal set" do
  #     context "with a goal that has already been met" do
  #       it "will return 0" do
  #         activity = create(:action, last_execution: Time.zone.now - 10.days, goal: 5)
  #         expect(activity.days_remaining?).to eq(0)
  #       end
  #     end

  #     context "with a goal that hasn't been met" do
  #       it "will return days remaining" do
  #         activity = create(:action)
  #         expect(activity.days_remaining?).to eq(11)
  #       end
  #     end
  #   end
  # end

  # describe "#goal_reached?" do
  #   context "when last_instance is less than goal" do
  #     it "returns false" do
  #       activity = create(:action)
  #       expect(activity.goal_reached?).to eq(false)
  #     end
  #   end

  #   context "when last_instance is equal to or greater than goal" do
  #     it "returns true" do
  #       activity = create(:action, goal: 3)
  #       expect(activity.goal_reached?).to eq(true)
  #     end
  #   end
  # end
end
