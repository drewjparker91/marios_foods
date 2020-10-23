class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :authenticate_admin

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit({roles: [] },:admin, :email, :name, :password, :password_confirmation)
    end
  end
end

