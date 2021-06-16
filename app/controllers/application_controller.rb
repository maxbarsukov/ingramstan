class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :image, :image_cache])
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username first_name last_name email password])
  end
end
