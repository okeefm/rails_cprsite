class CoursesController < ApplicationController
	def new
		@course = Course.new
		
		@instructors = PrivilegeLevel.where(:name => "Instructor").joins(:users)[0].users
	end
	
	def create
		@course = Course.new(course_params)
		
		if @course.save
			redirect_to @course
		else
			render 'new'
		end
	end
	
	def show
	  @course = Course.find(params[:id])
	end
	
	def index
		@courses = Course.all
	end
	
	def edit
		@course = Course.find(params[:id])
		@instructors = PrivilegeLevel.where(:name => "Instructor").joins(:users)[0].users

	end
	
	def update
		@course = Course.find(params[:id])
		
		if @course.update(course_params)
			redirect_to @course
		else
			render 'edit'
		end
	end
	
	def destroy
		@course = Course.find(params[:id])
		@course.destroy
		
		redirect_to courses_path
	end
	
	private
		def course_params
			params.require(:course).permit(:name, :start, :end, :max_capacity, :web_description, :email_description, :class_location, :organization_id, :instructor_ids=>[])
		end
end
