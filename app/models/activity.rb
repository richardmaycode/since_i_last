class Activity < ApplicationRecord
  GOAL_UNITS = %i[days months years].freeze

  enum goal_unit: GOAL_UNITS
  # Validations
  validates :title, presence: true, length: {minimum: 3, maximum: 60}

  def days_since?
    (Time.zone.now.to_date - last_instance.to_date).to_i
  end

  def days_remaining?
    return nil if goal.nil?

    return 0 if goal_date <= Time.zone.now

    (goal_date - Time.zone.now.to_date).to_i
  end

  def goal_date
    return nil if goal.nil?

    (last_instance + goal.days).to_date
  end

  def goal_reached?
    return false unless days_since? > goal

    true
  end
end
