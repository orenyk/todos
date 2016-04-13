class Todo < ActiveRecord::Base
  def complete!
    touch :completed_at
  end

  def mark_incomplete!
    update(completed_at: nil)
  end

  def completed?
    completed_at?
  end
end
