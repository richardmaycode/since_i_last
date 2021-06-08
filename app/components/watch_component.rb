# frozen_string_literal: true

class WatchComponent < ViewComponent::Base
  def initialize(watch:)
    @watch = watch
  end
end
