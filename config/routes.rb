Rails.application.routes.draw do
  
  get 'requests/new'

  get 'invitations/new'

  get 'invitations/show'

   post '/search', to: 'invitations#search'
  
  post '/rsearch' , to: 'requests#search'
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

  resources :requests
  get '/login' , to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout' , to: 'sessions#destroy'

  post '/respond' , to: 'invitations#respond'

  post '/grant' , to: 'requests#grant'
end
