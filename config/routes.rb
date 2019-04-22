Phcpress::Engine.routes.draw do

  # Mount Accounts Engine
  mount Phcaccounts::Engine, :at => '/'

  # Application Articles
  namespace :article do
    resources :categories, class_name: 'Phcpress::Articles::Category'
    resources :posts, class_name: 'Phcpress::Articles::Post'
  end

  # Application FrontEnd
  namespace :blog do
    resources :articles, only: [:index, :show]
  end

  # Application API
  namespace :api do
    namespace :v1 do
      resources :posts, defaults: {format: 'json'}
      resources :categories, defaults: {format: 'json'}
    end
  end

end
