require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    create_todo("foo")

    expect(page).to have_todo("foo")
  end
end
