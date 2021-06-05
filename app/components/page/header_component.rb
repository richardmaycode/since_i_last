# frozen_string_literal: true

class Page::HeaderComponent < ViewComponent::Base
  def initialize(title:)
    @title = title
  end
end
