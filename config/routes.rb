Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :jets

  authenticated :user do
    root :to => 'jets#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end