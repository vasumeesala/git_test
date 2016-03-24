class ProfileController < ApplicationController

	before_filter :authenticate_user!

	def show
		if user_signed_in?
			@profile= current_user
		else

		end
	end

	def update
		
		@profile = current_user
	if @profile.update(profile_params)
    		redirect_to root_path
  		else
    		render 'show'
  		end
	end
	private
	def profile_params
		params.require(:profile).permit(:first_name,:last_name,:address_line1,:address_line2,:City, :state, :Zip, :email)		
	end
end
