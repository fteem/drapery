Drapery::Engine.routes.draw do
  match '*path', to: 'drapery#index'
end
