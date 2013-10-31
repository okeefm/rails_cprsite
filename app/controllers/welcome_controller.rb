class WelcomeController < ApplicationController
  def index
	@courses = Course.where(start: Time.now.midnight..Time.now.midnight+ 21.days).order(:start).first(5)
  end

  def handsonly
  end

  def learn
	@course_types = CourseType.all
  end

  def aed
  end

  def info
  end
end
