Phcpress::Engine.routes.draw do

	# Frontend Routes
	namespace :frontend do
		resources :articles
	end

	# Article Routes
	namespace :articles do
		resources :posts, class_name: 'Phcpress::Articles::Post'
	end

	# Module Routes
	namespace :modules do
		resources :connections, class_name: 'Phcpress::Modules::Connection'
		resources :categories, class_name: 'Phcpress::Modules::Category'
	end

end
