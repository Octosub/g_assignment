class RegistrationsController < ApplicationController

  def index
    @registrations = Registration.where(user_id: current_user.id)
    @courses = @registrations.map { |registration| Course.find(registration.course_id) }

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

  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy
    redirect_to registrations_path, notice: 'You have successfully unregistered from this course.'
  end

end
