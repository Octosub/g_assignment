class RegistrationsController < ApplicationController

  def index
    @registrations = Registration.where(user_id: current_user.id)
    @courses = []
    @registrations.each do |registration|
      if registration.course.start_time && registration.course.start_time.between?(Time.now.beginning_of_week, Time.now.end_of_week)
        @courses << registration.course
      end
    end
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
