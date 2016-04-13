require "rails_helper"

RSpec.describe "User completes todo" do
  scenario "successfully" do
    sign_in

    click_on "New todo"
    fill_in "Title", with: "foo"
    click_on "Add"

    click_on "Mark complete"

    expect(page).to have_css ".todos li.completed", text: "foo"
  end
end
