class Watch < ApplicationRecord
  GOAL_TYPES = %i[infinite days].freeze
  BG_COLORS = %i[red orange green blue purple].freeze

  enum goal_type: GOAL_TYPES
  enum color: BG_COLORS

  # Validations
  validates :title, presence: true
  validates :executed, presence: true
  validates :goal, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :goal_type, presence: true

  validate :executed_cannot_be_in_the_future

  # Callbacks
  before_create :assign_color

  # Methods
  def executed_cannot_be_in_the_future
    errors.add(:executed, "can't be in the future") unless executed <= Time.zone.now
  end

  def days_since_execution
    current_date = Time.zone.now.to_date

    (current_date - executed.to_date).to_i
  end

  def assign_color
    self.color = Watch.colors.keys.sample(1).first
  end

  def goal_date
    return executed if goal == 0

    executed + goal.days
  end

  def days_remaining
    return 0 if goal == 0
    return 0 if goal_date < Time.zone.now

    (goal_date.to_date - Time.zone.now.to_date).to_i
  end
end
