class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  before_action :configure_permitted_parameters, if: :devise_controller?

  def users
    @user = current_user
    @profile = Profile.user.find(@user)
  end

  def after_sign_in_path_for(resource)
    if user_signed_in? &&current_user.profile
      user_profile_path(current_user, current_user.profile)
    elsif user_signed_in?
      new_user_profile_path(resource)
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

  def redirect_back_or(path)
    redirect_to request.referer || path
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |u|
        u.permit :email, :password, :password_confirmation, :role
      end
    end
end
