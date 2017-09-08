Rails.application.routes.draw do
  resources :tasks
  devise_for :users
  get 'welcome/index'
  resources :users
  root 'welcome#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
