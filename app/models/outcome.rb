class Outcome < ApplicationRecord
  GOAL_TYPES = %i[infinite days].freeze

  enum goal_type: GOAL_TYPES

  # Relationships
  belongs_to :watch

  # Validations
  validates :started, :executed, :goal, :goal_type, presence: true
  validate :executed_cannot_be_before_started

  # Methods
  def executed_cannot_be_before_started
    errors.add :executed, "cannot be before started" unless executed >= started
  end

  def goal_reached?
  end

  def days_in_range
  end
end
