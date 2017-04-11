Rails.application.routes.draw do
  root 'articles#index'
  get '/comments/new/:id' => 'comments#new', as: "comment"
  post '/comments'    => 'comments#create'
  #get 'comments/destroy'
  devise_for :users
  resources :articles
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
