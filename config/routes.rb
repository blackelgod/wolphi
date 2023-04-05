Rails.application.routes.draw do
  root to: "pages#home"
  delete '/logout', to: 'users#delete'
  get 'auth/:provider/callback', to: 'users#create'
  get 'auth/failure', to: redirect('/')
end
