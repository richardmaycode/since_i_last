# frozen_string_literal: true

class CountdownComponent < ViewComponent::Base
  def initialize(countdown:)
    @countdown = countdown
  end

end
