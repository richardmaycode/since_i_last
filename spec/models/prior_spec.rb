require 'rails_helper'

RSpec.describe Prior, type: :model do
  describe "#days" do
    it "will return number of days since the event" do
      prior_event = create(:prior_event)
      expect(prior_event.prior.days).to equal(5)
    end
  end

  describe "#goal_date" do
    it "returns the event date plus the goal amount" do
      prior_event = create(:prior_event)

      expect(prior_event.prior.goal_date).to eq(prior_event.date.to_date)
    end
  end

  describe "#days_until_goal" do
    context "when goal unit is unset" do
      it "returns 0" do
        prior_event = create(:prior_event)

        expect(prior_event.prior.days_until_goal).to eq(0)
      end
    end

    context "when goal unit is forever" do
      it "returns 0" do
        prior_event = create(:prior_event)
        prior_event.prior.goal.update(unit: 1)

        expect(prior_event.prior.days_until_goal).to eq(0)
      end
    end

    context "when goal unit is any other value" do
      it "returns the number of days" do
        prior_event = create(:prior_event)
        prior_event.prior.goal.update(amount: 15, unit: 2)

        expect(prior_event.prior.days_until_goal).to eq(10)
      end
    end
  end
end
