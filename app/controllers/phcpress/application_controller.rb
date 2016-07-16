module Phcpress
	class ApplicationController < ActionController::Base

		# Prevent CSRF attacks by raising an exception.
		before_action :authenticate_user!, if: -> { defined?(Devise) }
		protect_from_forgery with: :exception
		
		# Current User
		def current_user
			return unless session[:user_id]
			@current_user ||= User.find(session[:user_id])
		end

		# Load Helpers
		helper Phctitleseo::Engine.helpers
		helper Phcnotifi::Engine.helpers

	end
end