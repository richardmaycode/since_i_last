require "rails_helper"

RSpec.describe WatchComponent, type: :component do
  it "renders the title of the watch in a h3 tag" do
    watch = create(:watch)
    expect(
      render_inline(described_class.new(watch: watch)) {}.css("h3").to_html
    ).to include(
      watch.title
    )
  end
end
