require_dependency "phcpress/application_controller"

module Phcpress
	class Website::PagesController < ApplicationController

		# Resolve Layout for Web Pages
		layout :layouts_resolver_webpages

		# Retrieve News Posts for News Page
		def newspage
			@news_posts = News::Post.all
		end

		# Retrieve Blog Posts for Blog Page
		def blogpage
			@blog_posts = Blog::Post.all
		end

	end
end
