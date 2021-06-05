# frozen_string_literal: true

class PageComponent < ViewComponent::Base
  renders_one :header, Page::HeaderComponent
  renders_many :countdowns, CountdownComponent
end
