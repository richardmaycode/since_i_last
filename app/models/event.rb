class Event < ApplicationRecord
  delegated_type :eventable, types: %w[Prior Future], dependent: :destroy

  validates :title, presence: true
  validates :eventable_id, presence: true
end
