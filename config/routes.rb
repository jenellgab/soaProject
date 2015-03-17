Rails.application.routes.draw do
  devise_for :users
root :to => "pages#index"
resources :catches
resources :battles
resources :trades
resources :heals
resources :creature_locations


  get "/creatures", to: "creatures#index", as: :creatures
  get "/creature/:id", to: "creatures#show", as: :creature
  get "/creatures/new", to: "creatures#new", as: :new_creature
  post "/creatures", to: "creatures#create", as: :create_creature
  get "/creatures/:id/edit", to: "creatures#edit", as: :edit_creature
  post "/creatures/:id/update", to: "creatures#update", as: :update_creature
  delete "/creatures/:id", to: "creatures#destroy", as: :destroy_creature

 get "/locations", to: "locations#index", as: :locations
 get "/locations/new", to: "locations#new", as: :new_location
 get "/location/:id", to: "locations#show", as: :location
 post "/locations", to: "locations#create", as: :create_location
  get "/locations/:id/edit", to: "locations#edit", as: :edit_location
  post "/locations/:id/update", to: "locations#update", as: :update_location
  delete "/locations/:id", to: "locations#destroy", as: :destroy_location



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
