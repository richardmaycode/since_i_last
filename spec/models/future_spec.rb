require 'rails_helper'

RSpec.describe Future, type: :model do
  describe "#days_till_date" do
    it "returns the number of days until the event" do
      future_event = create(:future_event)
      expect(future_event.future.days).to eq(5)
    end
  end
end
