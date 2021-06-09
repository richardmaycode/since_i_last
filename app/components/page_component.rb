# frozen_string_literal: true

class PageComponent < ViewComponent::Base
  renders_one :header, Page::HeaderComponent
  renders_many :sections, Page::SectionComponent

  def initialize(id:nil)
    @id = id
  end
end
