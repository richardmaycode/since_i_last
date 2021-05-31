class Action < ApplicationRecord
  # GOAL_UNITS = %i[days months years forever].freeze

  # enum goal_unit: GOAL_UNITS

  # Validations
  validates :title, presence: true, length: {minimum: 3, maximum: 60}
  validates :last_execution, presence: true
  validates :icon, presence: true
  # validates :goal_unit, presence: true

  validate :last_execution_cant_be_future_dated
  # Scopes
  # scope :achieved, -> { where(last_execution <= Time.zone.now.to_date - goal.days) }
  # scope :unachieved, -> { where(last_execution > Time.zone.now.to_date - goal.days) }

  # Methods
  def last_execution_cant_be_future_dated
    if last_execution.present? && last_execution > Date.today
      errors.add(:last_execution, "can't be in the future")
    end
  end

  def days_since_last_execution
    (Time.zone.now.to_date - last_execution.to_date).to_i
  end

  # def days_remaining?
  #   return nil if goal.nil?

  #   return 0 if goal_date <= Time.zone.now

  #   (goal_date - Time.zone.now.to_date).to_i
  # end

  # def goal_date
  #   return nil if goal.nil?

  #   (last_execution + goal.days).to_date
  # end

  # def goal_reached?
  #   return false unless days_since? > goal

  #   true
  # end
end
