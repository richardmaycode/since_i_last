class Event < ApplicationRecord
  delegated_type :eventable, types: %w[Prior Future]

  validates :title, presence: true
  validates :date, presence: true
end
