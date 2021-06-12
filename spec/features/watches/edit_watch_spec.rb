require "rails_helper"

RSpec.describe "Edit Watch", type: :feature do
  describe "Updating a watch" do
    context "with valid attributes" do
      it "will show update" do
        person = create(:person)
        watch = create(:watch, person: person)
        login_as(person, scope: :person)
        visit edit_watch_path(watch)
        expect(page).to have_selector "h1", text: "Edit Watch"
        fill_in "Title",	with: "Updated title"
        click_on "Update Watch"
        expect(page).to have_selector "h3", text: "Updated title"
      end
    end
  end
end
