ThreadedSalesApp::Application.routes.draw do

  devise_for :users
  
  resources :users, only: [:show, :index]
  resources :posts, only: [:index, :show, :create]

  get 'events'  => 'static_pages#events'


  get '/posts/new/(:parent_id)', to: 'posts#new', as: :new_post


  root     'posts#index'

 
end
