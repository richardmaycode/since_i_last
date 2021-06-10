class Countdown < ApplicationRecord
  # Includes
  BG_COLORS = %w[red orange green blue purple].freeze

  enum color: BG_COLORS

  # Associations

  # Validations
  validates :title, presence: true
  validates :event_date, presence: true
  validate :event_date_not_in_the_past, on: :create

  # Scopes
  scope :complete, -> { where("event_date <= ?", Time.zone.now) }
  scope :incomplete, -> { where("event_date > ?", Time.zone.now) }

  # Callbacks
  before_create :assign_color

  # Methods
  def event_date_not_in_the_past
    errors.add(:event_date, "can't be in the past") unless event_date > Time.zone.today
  end

  def days_until_event_date
    current_date = Time.zone.now.to_date
    return 0 if event_date < current_date

    (event_date.to_date - current_date).to_i
  end

  def complete?
    days_until_event_date == 0
  end

  def assign_color
    self.color = BG_COLORS[rand(0..(BG_COLORS.count - 1))]
  end
end
