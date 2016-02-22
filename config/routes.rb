Phcpress::Engine.routes.draw do

	# Blog Section
	namespace :blog do
		resources :posts
	end
	
	# News Section
	namespace :news do
		resources :posts
	end
	
	# Serve Out Pages
	get 'website/pages/newspage', :path => "news"
	get 'website/pages/blogpage', :path => "blog"

end
