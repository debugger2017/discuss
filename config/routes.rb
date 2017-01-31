Rails.application.routes.draw do
  
  get 'invitations/new'

  get 'invitations/show'

  post '/search', to: 'invitations#create'
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get '/help' , to: 'static_pages#help'

  get '/about' , to: 'static_pages#about'

  get '/contact' , to: 'static_pages#contact'

  get '/signup' , to: 'users#new'

  resources :users

  resources :groups

  resources :invitations

  get '/login' , to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout' , to: 'sessions#destroy'
  
end
