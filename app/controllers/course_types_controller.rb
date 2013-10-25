class CourseTypesController < ApplicationController
	def new
		@course_type = CourseType.new
	end
	
	def create
		@course_type = CourseType.new(course_type_params)
		 
		if @course_type.save
			redirect_to @course_type
		else
			render 'new'
		end
	end
	
	def show
	  @course_type = CourseType.find(params[:id])
	end
	
	def index
		@course_types = CourseType.all
	end
	
	def edit
		@course_type = CourseType.find(params[:id])
	end
	
	def update
		@course_type = CourseType.find(params[:id])
		
		if @course_type.update(course_type_params)
			redirect_to @course_type
		else
			render 'edit'
		end
	end
	
	def destroy
		@course_type = CourseType.find(params[:id])
		@course_type.destroy
		
		redirect_to course_types_path
	end
	
	private
		def course_type_params
			params.require(:course_type).permit(:name, :default_web_description, :default_email_description)
		end
end
