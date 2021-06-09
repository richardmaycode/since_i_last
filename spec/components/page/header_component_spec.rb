require "rails_helper"

RSpec.describe Page::HeaderComponent, type: :component do
  it "renders header title in an h1 tag" do
    expect(
      render_inline(described_class.new(title: "Test Title")) {}.css("h1").to_html
    ).to include(
      "Test Title"
    )
  end
end
