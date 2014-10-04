class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  include ApplicationHelper

  protect_from_forgery with: :exception

  layout :layout_by_resource

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :envato_username, :password, :password_confirmation)
    end

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:email, :first_name, :last_name, :password,
               :password_confirmation, :api_key, :current_password)
    end
  end

  def layout_by_resource
    devise_controller? ? 'devise' : 'application'
  end
end
