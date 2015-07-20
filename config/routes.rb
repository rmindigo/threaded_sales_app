ThreadedSalesApp::Application.routes.draw do

  devise_for :users
  
  resources :users, only: [:show, :index]
  resources :static_pages, only: [:index]
  resources :posts, only: [:index, :show, :create]
  get '/posts/new/(:parent_id)', to: 'posts#new', as: :new_post


  root     'posts#index'

 
end
