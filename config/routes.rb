Phcpress::Engine.routes.draw do

	# Blog Section
	namespace :blog do
		resources :posts
	end
	
	# News Section
	namespace :news do
		resources :posts
	end

end
