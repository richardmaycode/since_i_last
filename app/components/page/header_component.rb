# frozen_string_literal: true

class Page::HeaderComponent < ViewComponent::Base
  renders_many :actions, Header::ActionComponent

  def initialize(title:)
    @title = title
  end
end
