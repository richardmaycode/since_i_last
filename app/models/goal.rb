class Goal < ApplicationRecord
  GOAL_UNITS = %w[unset forever days months years]

  enum unit: GOAL_UNITS

  belongs_to :prior

  validates :amount, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 1000}
  validates :unit, presence: true
end
