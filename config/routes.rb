Blog2::Application.routes.draw do

  devise_for :users

  get 'welcome/index'

  resources :comments

  resources :posts 
  
  root :to => 'posts#index'  
 
end
