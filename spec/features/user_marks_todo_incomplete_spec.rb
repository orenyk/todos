require "rails_helper"

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in

    create_todo("foo")

    click_on "Mark complete"
    click_on "Mark incomplete"

    expect(page).not_to have_completed_todo("foo")
    expect(page).to have_todo("foo")
  end
end
