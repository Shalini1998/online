Rails.application.routes.draw do
  get '/dashboard-admin' => "welcome#admins_dashboard"
  get '/dashboard-task' => "welcome#tasks_dashboard"
  resources :courses do 
    collection do
      get :new_enrollement
      post :create_enrollement
    end
  end

  resources :students
  resources :tasks
  devise_for :users, controllers: {sessions: "users/sessions", registrations: "users/registrations", passwords: "users/passwords", confirmations: "users/confirmations", unlocks: "users/unlocks"}
  
  root 'welcome#index'

  namespace :admins do
  
    resources :users do
      
      collection do
        post :create_users
        get :edit_users
      end
      member do
        patch :update_users
        delete :destroy_users
      end
    end
     resources :tasks
  end
  




  #get 'course/' => "admins/users#edit"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  #get 'ajax/:action', to: 'ajax#:action', :defaults => { :format => 'json' }
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
#   end
end
