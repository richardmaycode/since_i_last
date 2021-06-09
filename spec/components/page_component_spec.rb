require "rails_helper"

RSpec.describe PageComponent, type: :component do
  it "renders a page with correct id" do
    render_inline(described_class.new(id: "test_page")) {}

    expect(rendered_component).to have_css "main[id='test_page']"
  end
end
