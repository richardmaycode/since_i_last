require "rails_helper"

RSpec.describe Page::SectionComponent, type: :component do
  it "renders a section with correct id and class" do
    render_inline(described_class.new(id: "test_id", classes: ["test_class"])) { "Hello, components!" }

    expect(rendered_component).to have_css "section[id='test_id']"
    expect(rendered_component).to have_css "section[class='test_class']"
  end
end
