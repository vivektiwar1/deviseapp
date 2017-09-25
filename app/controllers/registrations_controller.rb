class RegistrationsController < Devise::RegistrationsController

protected
	def after_sign_up_path_for(resource)
		'/subscribers/new'
	end
private
	def sign_up_params
		params.require(:user).permit(:name,:email,:password,:password_confirmation)
	end

	def accout_update_params
		params.require(:user).permit(:name,:email,:password,:password_confirmation,:current_password)
	end

end
