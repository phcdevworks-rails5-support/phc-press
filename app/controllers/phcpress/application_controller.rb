module Phcpress
	class ApplicationController < ActionController::Base

		# Prevent CSRF attacks by raising an exception.
		# For APIs, you may want to use :null_session instead.
		protect_from_forgery with: :exception

		# Load Engine Helpers in Main App
		helper Phcnotifi::Engine.helpers
		# helper Phctitler::Engine.helpers
		
		# Make Current User Sitewide
		def current_user?(user)
			user == current_user
		end

	end
end
