class Watch < ApplicationRecord
  # Includes
  includes Colorable

  # Validations
  validates :title, presence: true
  validates :executed, presence: true
  validate :executed_cannot_be_in_the_future

  # Callbacks
  # before_create :assign_color

  # Methods
  def executed_cannot_be_in_the_future
    errors.add(:executed, "can't be in the future") unless executed <= Time.zone.now
  end

  def days_since_execution
    current_date = Time.zone.now.to_date

    (current_date - executed.to_date).to_i
  end
end
