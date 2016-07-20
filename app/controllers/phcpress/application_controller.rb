module Phcpress
	class ApplicationController < ActionController::Base

		# Prevent CSRF attacks by raising an exception.
		protect_from_forgery with: :exception

		# Load Helpers
		helper Phctitleseo::Engine.helpers
		helper Phcnotifi::Engine.helpers

	end
end