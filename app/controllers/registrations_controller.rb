class RegistrationsController < Devise::RegistrationsController
  def create
    super
    # Your custom code here. Make sure you copy devise's functionality
  end

  private

  # Notice the name of the method
  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
