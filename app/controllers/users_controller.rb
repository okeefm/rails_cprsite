class UsersController < ApplicationController
	def new
		@user = User.new
	end
	
	def create
		@user = User.new(user_params)
		
		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end
	
	def index
		@users = User.all
	end
	
	def show
		@user = User.find(params[:id])
	end
	
	def edit
		@user = User.find(params[:id])
	end
	
	def update
		@user = User.find(params[:id])
		
		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end
	
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		
		redirect_to users_path
	end
	
	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :email_confirmation, :password, :password_confirmation, :phone, :address_1, :address_2, :city, :state, :zip, :country)
		end

end
