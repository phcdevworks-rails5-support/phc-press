module Phcpress
	class ApplicationController < ActionController::Base

		# Prevent CSRF attacks by raising an exception.
		# For APIs, you may want to use :null_session instead.
		protect_from_forgery with: :exception

		# Load Engine Helpers in Main App
		helper Phcnotifi::Engine.helpers
		# helper Phctitler::Engine.helpers

	end
end
