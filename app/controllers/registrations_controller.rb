class RegistrationsController < Devise::RegistrationsController
    layout false

  def new
  	redirect_to root_path
  end
end