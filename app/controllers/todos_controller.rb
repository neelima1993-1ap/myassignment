class TodosController < ApplicationController

	def index
		if current_user.user_role.eql?('admin')
		  @todos = Todo.all
	  else
	      @todos = current_user.todos
	  end
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
	    if @todo.save
	      flash[:notice] = 'Todo was successfully created.'
	      redirect_to action: 'index'
	    else
	      render action: 'new'
	    end
	end


	def edit
    @todo = Todo.find(params[:id])
  end

  def show
    @todo= Todo.find(params[:id])
  end

  def update
	  @todo = Todo.find(params[:id])
	  if @todo.update_attributes(todo_params)
	    redirect_to action: 'index'
	  else
	    render action: 'edit'
	  end
  end


private

  def todo_params
    params.require(:todo).permit(:name, :description , :project_id , :user_id, :status )
  end
end