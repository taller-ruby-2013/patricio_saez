Blog2::Application.routes.draw do

  get 'welcome/index'

  root :to => 'welcome#index'

  resources :posts
 
end
