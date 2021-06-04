class Countdown < ApplicationRecord
  # Associations
  # Validations
  validates :title, presence: true
  validates :event_date, presence: true
  validate :event_date_not_in_the_past, on: :create

  # Scopes

  # Methods
  def event_date_not_in_the_past
    if event_date.present? && event_date < Time.zone.today
      errors.add(:event_date, "can't be in the past")
    end
  end

  def days_until_event_date
    current_date = Time.zone.now.to_date
    return 0 if event_date < current_date

    (event_date.to_date - current_date).to_i
  end
end
