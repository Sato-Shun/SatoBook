Rails.application.routes.draw do
  root 'articles#index'
  get '/comments/new/:id'   => 'comments#new', as: "comment"
  post '/comments'          => 'comments#create'
  delete '/comments/:id' => 'comments#destroy', as: "destroy_comment"
  devise_for :users
  resources :articles do
  	resource :like, only: [:create, :destroy]
    
  end
  get '/users'            => 'users#index'
  get '/users/:id'        => 'users#show' , as:"user"
end
