# frozen_string_literal: true

class Pages::FormPageComponent < ViewComponent::Base
  renders_one :header, Page::HeaderComponent
end
