class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if user_signed_in? &&current_user.profile
      user_profile_path(current_user, current_user.profile)
    elsif user_signed_in?
      new_user_profile_path(resource)
    end

  end

  def users
    @user = current_user
    @profile = Profile.user.find(@user)
  end

protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit :email, :password, :password_confirmation
    end
  end
end
