class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	include SessionsHelper
	include TeamHelper
	#before_action :signed_in_user, only: [:index, :edit, :update, :destroy]

	def signed_in_user
		unless signed_in?

			redirect_to signin_url, notice: "Please sign in."
		end
	end


end
