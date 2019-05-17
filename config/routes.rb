Phcpress::Engine.routes.draw do

  # API Routes
  namespace :api, :path => "", :constraints => {:subdomain => "api"} do
    namespace :v1 do
      resources :posts, defaults: {format: 'json'}
      resources :categories, defaults: {format: 'json'}
    end
  end

  # Article Routes
  namespace :article do
    resources :categories, class_name: 'Phcpress::Articles::Category'
    resources :posts, class_name: 'Phcpress::Articles::Post'
  end

  # Frontend Routes
  namespace :blog do
    resources :articles, only: [:index, :show]
  end

  # PHCAccounts Routes
  mount Phcaccounts::Engine, :at => '/'

end
