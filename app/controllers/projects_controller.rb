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

	private

	def project_params
		params.require(:project).permit(:name , users: [] )
	end
end