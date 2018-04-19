Rails.application.routes.draw do
  get 'comments/new'

  get 'favorites/index'

  get 'topics/new'

  get 'sessions/new'

  get 'users/new'

  get 'pages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'
end

Rails.application.routes.draw do
  get 'comments/new'

  get 'favorites/index'

  get 'topics/new'

  get 'sessions/new'

  get 'users/new'

  root 'pages#index'
  get 'pages/help'
end

Rails.application.routes.draw do
  get 'comments/new'

  get 'favorites/index'

  get 'topics/new'

  get 'sessions/new'

  root 'pages#index'

  get 'pages/help'
  resources 'users'
end

Rails.application.routes.draw do
  get 'comments/new'

  get 'favorites/index'

  get 'topics/new'

  root 'pages#index'

  get 'pages/help'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
end

Rails.application.routes.draw do
  get 'comments/new'

  get 'favorites/index'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
end

Rails.application.routes.draw do
  get 'comments/new'

  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
  post '/favorites', to: 'favorites#create'

end

Rails.application.routes.draw do
  get 'comments/new'

  get 'favorites/index'

  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
  post '/favorites', to: 'favorites#create'
  get '/favorites', to: 'favorites#index'

end

Rails.application.routes.draw do
  get 'comments/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
end

Rails.application.routes.draw do
  get 'comments/new'

  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
  post '/favorites', to: 'favorites#create'

end

Rails.application.routes.draw do
  get 'comments/new'

  get 'favorites/index'

  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
  post '/favorites', to: 'favorites#create'
  get '/favorites', to: 'favorites#index'

end

Rails.application.routes.draw do
  get 'comments/new'

  get 'favorites/index'

  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
  post '/favorites', to: 'favorites#create'
  get  '/favorites', to: 'favorites#index'
  post '/comments',  to: 'comments#create'
  get  '/comments',  to: 'comments#new'

  get 'topics/:id',  to: 'topics#show'
  get 'topics/:id/edit', to: 'topics#edit'
  post "topics/:id/update", to:  "topics#update"
  post "topics/:id/destroy", to: "topics#destroy"

  get "users/:id", to: "users#show"
  get "users/:id/edit", to: "users#edit"
  post "users/:id/update" => "users#update"

  post "comments/:id/destroy" => "comments#destroy"


end
