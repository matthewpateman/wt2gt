Wt2gt::Application.routes.draw do

  get "pages/about"
  get "pages/blog"

  resources :friends


  # Settings


  put "settings/profile"
  put "settings/shipping"
  put "settings/payment"

  get "settings/networks"


  # Sessions

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :items


  get "login/index"

  get "signup/index"

  get "register/index"

  #Log In Page
  root :to => 'signup#index'

  resources :users



  match '/register',  :controller => 'signup',   :action => 'index'
  match '/signup',  :controller => 'signup',   :action => 'index'
  match '/settings',  :controller => 'settings',   :action => 'index'
  match '/login', :controller => 'pages', :action =>'login'
  match '/about', :controller => 'pages', :action => 'about'
  match '/blog', :controller => 'pages', :action => 'blog'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.


  match ':controller(/:action(/:id))(.:format)'

  match '/(:username)',           :controller => 'users',   :action => 'profile'
end
