class Future < ApplicationRecord
  include Eventable

  validate :date_not_in_past, on: :create

  def date_not_in_past
    if launch_date.present? && launch_date < Time.zone.today
      errors.add(:launch_date, "can't be in the past")
    end
  end

  def days_till_launch_date
    (launch.to_date - Time.zone.now.to_date).to_i
  end
end
