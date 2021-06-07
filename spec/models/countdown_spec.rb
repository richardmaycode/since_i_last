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

  describe "#complete?" do
    context "if event_date is in the future" do
      it "returns false" do
        expect(subject.complete?).to eq(false)
      end
    end

    context "if event_date is today or in the past" do
      it "returns true" do
        subject.update(event_date: Time.zone.now - 2.days)
        expect(subject.complete?).to eq(true)
      end
    end
  end

  describe "#assign_color" do
    it "will pick a random color from BG_COLORS" do
      subject.assign_color
      expect(Countdown.colors.keys).to include(subject.color)
    end
  end
end
