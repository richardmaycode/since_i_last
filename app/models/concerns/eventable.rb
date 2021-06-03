module Eventable
  extend ActiveSupport::Concern

  included do
    has_one :event, as: :eventable, touch: true
  end
end
