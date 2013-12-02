Blog2::Application.routes.draw do

  devise_for :users

  get 'welcome/index'

  resources :posts do
  	resources :comments
  end

  root :to => 'posts#index'  
 
end
