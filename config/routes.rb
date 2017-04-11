Rails.application.routes.draw do
  root 'articles#index'
  get '/comments/new/:id'   => 'comments#new', as: "comment"
  post '/comments'          => 'comments#create'
  delete '/comments/:id' => 'comments#destroy', as: "destroy_comment"
  devise_for :users
  resources :articles
  get '/users'            => 'users#index'
  get '/users/:id'        => 'users#show'
end
