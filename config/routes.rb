Rails.application.routes.draw do
  root :to => 'users#index'

  # resources :users
  # resources :cars
  # resources :houses
  # resources :spouses
  resources :sessions
  resources :users 
  resources :game_logs, only: [:index, :show]

  get 'login' => 'sessions#new', :as => :login
  
  post 'logout' => 'sessions#destroy', :as => :logout 
  get  'logout' => 'users#index'
  
  get '/games' => 'games#index'
  post '/games/' => 'games#solveit'


   #get '/users/' => 'users#index'

   
   #get '/gamelogs' => 'gamelogs#show'
  # get '/users/new' => 'users#new'
  # get '/users/:id' => 'users#show'
  # post '/users/' => 'users#create'
  # get '/users/:id/edit' => 'users#edit'
  # put '/users/:id' => 'users#update'
  # delete '/users/:id' => 'users#destroy'

  # get '/cars/index' => 'cars#index'
  # get '/cars/new' => 'cars#new'
  # get '/cars/:id' => 'cars#show'
  # post '/cars/' => 'cars#create'
  # get '/cars/:id/edit' => 'cars#edit'
  # put '/cars/:id' => 'cars#update'
  # delete '/cars/:id' => 'cars#destroy'

  # get '/houses/index' => 'houses#index'
  # get '/houses/new' => 'houses#new'
  # get '/houses/:id' => 'houses#show'
  # post '/houses/' => 'houses#create'
  # get '/houses/:id/edit' => 'houses#edit'
  # put '/houses/:id' => 'houses#update'
  # delete '/houses/:id' => 'houses#destroy'

  # get '/spouses/index' => 'spouses#index'
  # get '/spouses/new' => 'spouses#new'
  # get '/spouses/:id' => 'spouses#show'
  # post '/spouses/' => 'spouses#create'
  # get '/spouses/:id/edit' => 'spouses#edit'
  # put '/spouses/:id' => 'spouses#update'
  # delete '/spouses/:id' => 'spouses#destroy'
  


  get '/login' => 'login#login_form'
  post '/login' => 'login#check_login'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
