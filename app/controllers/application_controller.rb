class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
  	attributes = [:name, :email, :username, :password]
  	attributes_one = [:login, :username, :remember_me]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes) #<< [:name, :email, :username, :password]
    devise_parameter_sanitizer.permit(:sign_in, keys: attributes_one) #<< [:login, :username, :remember_me]
  end
end
