class Prior < ApplicationRecord
  include Eventable

  # Relationships
  has_one :goal

  # Callbacks
  after_create :create_default_goal

  def days
    (Time.zone.now.to_date - event.date.to_date).to_i
  end

  def days_until_goal
    return 0 if goal.unit == "unset" || goal.unit == "forever"

    (goal_date - Time.zone.now.to_date).to_i
  end

  def goal_date
    (event.date + goal.amount.days).to_date
  end

  def create_default_goal
    build_goal(amount: 0, unit: 0).save
  end
end
