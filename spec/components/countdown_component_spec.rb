require "rails_helper"

RSpec.describe CountdownComponent, type: :component do
  it "renders countdown title in an h3 tag" do
    countdown = create(:countdown)
    expect(
      render_inline(described_class.new(countdown: countdown)) {}.css("h3").to_html
    ).to include(
      countdown.title
    )
  end
end
