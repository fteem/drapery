Drapery::Engine.routes.draw do
  get '/drapery', to: 'drapery#index'
  post :subscriptions, to: 'subscriptions#create'
end
