CsOperatorDash::Application.routes.draw do
  root 'zone#index'

  get 'events' => 'events#index'
  get 'events/index' => 'events#index'
  get 'events/json' => 'events#json'
  get 'events/:id' => 'events#view'

  get 'zones' => 'zone#index'
  get 'zones/index' => 'zone#index'
  get 'zones/:id/hosts' => 'zone#hosts'
  get 'zones/:id/hosts/json' => 'zone#jsonhosts'
  get 'zones/:id/hosts/:hostid/json' => 'zone#jsonhost'
  get 'zones/:id/charts' => 'zone#charts'
  get 'zones/:id' => 'zone#view'
  get 'zones/json/:id' => 'zone#jsonsingle'
  get 'zones/json/:id/infracounter' => 'zone#jsoninfracounter'
  get 'zones/json' => 'zone#json'

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
