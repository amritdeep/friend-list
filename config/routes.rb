Amrit::Application.routes.draw do
  devise_for :donations

  get "sendtext/index"

  get "sendtext/send_text_message"

  post "sendtext/send_text_message"
  
  match "donation/index" => "donation#index", as: :donation, via: :get
  match "donation/donate" => "donation#donate", as: :donate, via: :post
    
  match "friend/be_mine_friend" => "friend#be_mine_friend", as: :my_friend, via: :post
  match "friend/mine_friend" => "friend#mine_friend", as: :friend, via: :get
  match "friend/friend_list" => "friend#friend_list", as: :new_friend, via: :get
  match "friend/search" => "friend#search", as: :search, via: :get
  match "friend/show_details(/:id)" => "friend#show_details", as: :details
  # get "friend/search"
 
  match "contact/send_msg" => "contact#send_msg", as: :send_message, via: :post
  match "contact/contact_me" => "contact#contact_me", as: :contact_me, via: :get

  match "home/index" => "home#index", as: :home, via: :get

  root to: "home#index"

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
end
