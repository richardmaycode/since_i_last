# frozen_string_literal: true

class Page::SectionComponent < ViewComponent::Base
  def initialize(id:, classes: [])
    @id = id
    @classes = classes
  end
end
