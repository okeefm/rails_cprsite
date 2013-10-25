class WelcomeController < ApplicationController
  def index
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
