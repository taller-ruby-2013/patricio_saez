Blog2::Application.routes.draw do

  get 'welcome/index'

  resources :posts

  root :to => 'post#index'  
 
end
