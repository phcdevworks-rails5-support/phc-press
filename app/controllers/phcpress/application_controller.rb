module Phcpress
	class ApplicationController < ActionController::Base

		# Prevent CSRF attacks by raising an exception.
		# For APIs, you may want to use :null_session instead.
		protect_from_forgery with: :exception
		before_action :current_user
		
		# Load Engine Helpers in Main App
		helper Phcnotifi::Engine.helpers
		# helper Phctitler::Engine.helpers
		
		# Make Current User Sitewide
		def current_user
			return unless session[:user_id]
			@current_user ||= User.find(session[:user_id])
		end

	end
end
