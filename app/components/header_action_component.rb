# frozen_string_literal: true

class HeaderActionComponent < ViewComponent::Base
  def initialize(name:, href:)
    @name = name
    @href = href
  end

end
