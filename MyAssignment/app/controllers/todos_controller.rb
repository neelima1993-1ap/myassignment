class TodosController < ApplicationController

	def index
		@todos = Todo.all
	end

	def new
		@todo = Todo.new
	end

	def create
		logger.info("***********")
		logger.info(todo_params)
		@todo = Todo.new(todo_params)
	    if @todo.save!
	      flash[:notice] = 'Todo was successfully created.'
	      redirect_to action: 'index'
	    else
	      render action: 'new'
	    end
	end

private

  def todo_params
    params.require(:todo).permit(:description, :project_id, :user_id)
  end
end