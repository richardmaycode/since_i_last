require "rails_helper"

RSpec.describe Header::ActionComponent, type: :component do

  it "renders a link with href and name" do
    expect(
      render_inline(described_class.new(name: "Fancy", href: "test.com")) { }.css("a").to_html
    ).to include(
      "<a class=\"btn\" href=\"test.com\">Fancy</a>"
    )
  end
end
