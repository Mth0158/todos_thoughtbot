class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  #   def new
  #     @todo = Todo.new
  #   end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:name)
  end
end
