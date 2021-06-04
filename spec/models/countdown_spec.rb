require "rails_helper"

RSpec.describe Countdown, type: :model do
  subject(:countdown) { create(:countdown) }

  describe "#days_until_event_date" do
    context "when event is in the future" do
      it "returns the number of days until the event will occur" do
        subject.event_date = Time.zone.now - 2.days
        expect(subject.days_until_event_date).to eq(0)
      end
    end

    context "when event has past" do
      it "returns 0" do
        days_until_event = 5
        subject.event_date = Time.zone.now + days_until_event.days
        expect(subject.days_until_event_date).to eq(days_until_event)
      end
    end
  end
end
