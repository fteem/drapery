Rails.application.routes.draw do

  mount Drapery::Engine => "/"
  match '', to: redirect('/drapery')
end
