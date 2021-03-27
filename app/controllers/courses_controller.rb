class CoursesController < ApplicationController
  def index

    @courses = Course.order("created_at DESC")

  end
end
