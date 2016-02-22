require_dependency "phcpress/application_controller"

module Phcpress
	class Website::PagesController < ApplicationController

		def newspage
			@news_posts = News::Post.all
		end

		def blogpage
			@blog_posts = Blog::Post.all
		end

	end
end
