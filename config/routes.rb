Drapery::Engine.routes.draw do
  root to: 'drapery#index'
  get '/drapery', to: 'drapery#index'
  post :subscriptions, to: 'subscriptions#create'
end
