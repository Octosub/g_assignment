class RegistrationsController < ApplicationController

  def index
    @registrations = Registration.where(user_id: current_user.id)
  end

  def create
    course_id = params[:course_id]
    @registration = Registration.new
    @registration.course_id = course_id
    @registration.user_id = current_user.id

    if @registration.save
      redirect_to courses_path, notice: 'You have successfully registered for this course.'
    else
      redirect_to courses_path, alert: 'You have already registered for this course.'
    end
  end

end
