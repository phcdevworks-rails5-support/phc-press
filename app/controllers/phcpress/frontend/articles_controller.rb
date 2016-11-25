require_dependency "phcpress/application_controller"

module Phcpress
	class Frontend::ArticlesController < ApplicationController

		# Layouts and Filters
		layout "phcpress/frontend"

		# Article Index
		def index
			@frontend_articles = Articles::Post.all
		end

		# Article Show
		def show
		end

	end
end
