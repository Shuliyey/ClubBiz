Rails.application.routes.draw do

  get 'clubs/my_clubs' => 'clubs#my_clubs'

  get 'clubs/show'

  devise_for :clubs
  devise_for :students

  resources :events do
    resources :comments, only: [:new, :create, :edit, :destroy, :update]
  end

  resources :clubs_students, only: [:create, :destroy]
  resources :events_students, only: [:create, :destroy]

  resources :posts
  resources :reservations, only: [:create, :destroy]


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'events#index'

  get 'clubs/redirect_to_admin_login' => 'clubs#redirect_to_admin_login'

  get 'clubs/:id' => 'clubs#show', as: :profile

  get 'clubs' => 'clubs#index'
  
  get 'students/admin_permission' => 'students#admin_permission'
  
  get 'students/grant_permission/:id' => 'students#grant_permission', as: :grant_permission
  
  get 'students/:id' => 'students#show', as: :student_profile
  
  get 'students' => 'students#index'
  
  get 'search' => 'events#search', as: :search

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
