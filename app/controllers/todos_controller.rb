class TodosController < ApplicationController
  before_filter :load_todo, only: %w(show update destroy)
  respond_to :json, :html

  def index
    @todos = Todo.all
    respond_with @todos
  end

  def show
    respond_with @todo
  end

  def update
    @todo.update_attributes todo_params
    respond_with @todo
  end

  def create
    @todo = Todo.create todo_params
    respond_with @todo
  end

  def destroy
    @todo.destroy
    respond_with @todo
  end

  private

  def load_todo
    @todo = Todo.find params[:id]
  end

  def todo_params
    params.require(:todo).permit(:description, :status)
  end
end
