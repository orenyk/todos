module Features
  def create_todo(title)
    click_on "New todo"
    fill_in "Title", with: title
    click_on "Add"
  end

  def have_todo(title)
    have_css(".todos li", text: title)
  end

  def have_completed_todo(title)
    have_css(".todos li.completed", text: title)
  end
end
