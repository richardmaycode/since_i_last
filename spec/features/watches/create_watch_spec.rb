require "rails_helper"

RSpec.describe "Create watch", type: :feature do
  before(:each) do
    person = create(:person)
    login_as(person, scope: :person)
  end

  describe "create action" do
    context "with valid parameters" do
      it "creates a new watch" do
        visit new_watch_path
        expect(page).to have_selector "h1", text: "Create Watch"
        fill_in "Title", with: "test title"
        fill_in "watch_executed", with: "2020-1-1"
        click_on "Create Watch"
        expect(page).to have_selector "h3", text: "test title"
      end
    end
    context "with invalid parameters" do
      it "will display an error" do
        visit new_watch_path
        expect(page).to have_selector "h1", text: "Create Watch"
        fill_in "watch_executed", with: "2020-1-1"
        click_on "Create Watch"
        expect(page).to have_selector "section.errors"
      end
    end
  end
end
