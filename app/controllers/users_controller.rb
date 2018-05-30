class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			flash[:notice] = 'User was successfully created.'
			redirect_to action: 'index'
		else
			render action: 'new'
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :role_id, :email, :password)
	end
end