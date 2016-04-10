require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path

    click_on "New todo"
    fill_in "Title", with: "foo"
    click_on "Add"

    expect(page).to have_css ".todos li", text: "foo"
  end
end
