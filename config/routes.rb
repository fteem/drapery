Drapery::Engine.routes.draw do
  resources :subscriptions
  match '*path', to: 'drapery#index'
end
