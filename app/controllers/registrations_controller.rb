class RegistrationsController < ApplicationController

  def index
    @registrations = Registration.where(user_id: current_user.id)
  end
end
