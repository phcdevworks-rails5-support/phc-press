Phcpress::Engine.routes.draw do

	# Blog Routes
	namespace :blog do
		resources :posts
	end

	# News Routes
	namespace :news do
		resources :posts
	end

end
