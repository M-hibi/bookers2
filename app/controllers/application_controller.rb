class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top, :about]  
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :success, :info, :warning, :danger
  protect_from_forgery

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
