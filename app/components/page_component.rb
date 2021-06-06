# frozen_string_literal: true

class PageComponent < ViewComponent::Base
  renders_one :header, Page::HeaderComponent
  renders_many :incomplete_countdowns, CountdownComponent
  renders_many :complete_countdowns, CountdownComponent
end
