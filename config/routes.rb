Drapery::Engine.routes.draw do
  root to: 'drapery#index'
  get ':any', to: redirect(path: '/'), any: /.*/
  post :subscriptions, to: 'subscriptions#create'
end
