class ProjectsController < ApplicationController

	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)

		if @project.save!
			flash[:notice] = 'Project was successfully created.'
			redirect_to action: 'index'
		else
			render action: 'new'
		end
	end

	def edit
    	@project = Project.find(params[:id])
  	end

	def show
    	@project = Project.find(params[:id])
    	@todos_graph = @project.todos.group(:status).count.to_a
  	end

    def update
	    @project = Project.find(params[:id])
	    if @project.update_attributes(project_params)
	     	redirect_to action: 'index'
	    else
	      render action: 'edit'
	    end
    end

	private

	def project_params
		params.require(:project).permit(:name , user_ids: [] )
	end
end