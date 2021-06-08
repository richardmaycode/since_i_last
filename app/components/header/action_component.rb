# frozen_string_literal: true

class Header::ActionComponent < ViewComponent::Base
  def initialize(name:, href:)
    @name = name
    @href = href
  end
end
