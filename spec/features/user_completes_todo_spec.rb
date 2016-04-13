require "rails_helper"

RSpec.describe "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo("foo")

    click_on "Mark complete"

    expect(page).to have_completed_todo("foo")
  end
end
