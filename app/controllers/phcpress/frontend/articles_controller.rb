require_dependency "phcpress/application_controller"

module Phcpress
	class Frontend::ArticlesController < ApplicationController

		# Article Index
		def index
			@frontend_articles = Articles::Post.all
		end

		# Article Show
		def show
			@frontend_article = Articles::Post.find(params[:id])
		end

	end
end
