class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
 
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit(:name, :email, :password, :first_name, :password_confirmation, :last_name, :mobile_no)}
  end
end
