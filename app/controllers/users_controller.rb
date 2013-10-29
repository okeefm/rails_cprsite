class UsersController < ApplicationController
	#before_filter :require_no_user, :only => [:new, :create]
	before_filter :require_user, :only => [:show, :edit, :update]
	
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
			flash[:notice] = "Account updated!"
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
	
	def privilege_levels
		@user = User.find(params[:id])
	end
	
	def update_user_privilege_levels
		@user = User.find(params[:id])
		
		logger.debug "Params[:user][:privilege_level_ids]: " + params[:user][:privilege_level_ids].join(", ")
		if @user.update_privilege_levels(params[:user][:privilege_level_ids])
			flash[:notice] = "Privilege levels updated!"
			redirect_to @user
		else
			render 'privilege_levels'
		end
	end
	
	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :email_confirmation, :password, :password_confirmation, :phone, :address_1, :address_2, :city, :state, :zip, :country)
		end

end
