require_dependency "phcpress/application_controller"

module Phcpress
	class Frontend::ArticlesController < ApplicationController

		# Article Index
		def index
			@articles_posts = Articles::Post.all
		end

		# Article Show
		def show
		end

	end
end
