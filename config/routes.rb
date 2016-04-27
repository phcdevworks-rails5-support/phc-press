Phcpress::Engine.routes.draw do

	# Blog Routes
	namespace :blog do
		resources :posts, class_name: 'Phcpress::News::Post'
	end

	# News Routes
	namespace :news do
		resources :posts, class_name: 'Phcpress::Blog::Post'
	end

	# Categories
	resources :categories, class_name: 'Phcpress::Category'

end
