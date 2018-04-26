Rails.application.routes.draw do
  get '/', to: 'static#index', as: 'home'
  get '/user/new', to: 'user#new', as: 'new_user'
  get '/user/:id_user', to: 'user#show'
  post '/user/create', to: 'user#create', as: 'create_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
