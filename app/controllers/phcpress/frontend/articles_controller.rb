require_dependency "phcpress/application_controller"

module Phcpresspro
	class Frontend::ArticlesController < ApplicationController

		# Security & Filters
		layout '/layouts/phcpress/frontend.html.erb'

		# Article Index
		def index
			@articles_index = Articles::Post.all
		end
	
		# Single Article Post
		def show
			@articles_single = Articles::Post.find(params[:id])
		end

	end
end
