class Goal < ApplicationRecord
  GOAL_TYPES = %w[infinite, days]

  enum goal_type: GOAL_TYPES

  validates :amount, :goal_type, presence: true
end
