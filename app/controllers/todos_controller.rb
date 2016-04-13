class TodosController < ApplicationController
  before_filter :authenticate

  def index
    @todos = Todo.where(email: current_user)
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params.merge(email: current_user))
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
