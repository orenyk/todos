require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see others' todos" do
    Todo.create(title: "bar", email: "other@example.com")

    sign_in_as "person@example.com"

    expect(page).not_to have_todo("bar")
  end
end
