Phcpress::Engine.routes.draw do

	# Article Routes
	namespace :articles do
		resources :posts, class_name: 'Articles::Post'
	end

	# Module Routes
	namespace :modules do
		resources :connections, class_name: 'Modules::Connection'
		resources :categories, class_name: 'Modules::Category'
	end

end
