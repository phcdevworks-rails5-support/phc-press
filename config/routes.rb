Phcpress::Engine.routes.draw do
  namespace :blog do
    resources :posts
  end
  namespace :news do
    resources :posts
  end
end
