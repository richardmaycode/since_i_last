# frozen_string_literal: true

class Page::HeaderComponent < ViewComponent::Base
  renders_many :actions, HeaderActionComponent
  
  def initialize(title:)
    @title = title
  end
end
