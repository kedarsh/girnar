Rails.application.routes.draw do
  resources :tea_base_types

  resources :themes

  resources :tea_bases

  resources :orders

  resources :labels

  resources :packagings

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :flavours

  devise_for :users
  resources :serving_styles
  
  #get 'serving_styles/get_drop_down_options_tea_bases'
  
  get 'get_drop_down_options_tea_bases/:id', to: 'serving_styles#get_drop_down_options_tea_bases'

  
  get 'pages/home'
  get 'pages/contact'
  get 'pages/step1'
  get 'pages/step2'
  get 'pages/step3'
  get 'pages/step4'
  get 'pages/step5'
  get 'pages/step6'
  get 'pages/step7'
  get 'pages/step10'
  get 'pages/completion_page'
  get 'pages/headerdemo'
  get 'pages/footerdemo'
  get 'pages/ddtry'
  get 'pages/home_special_offer'
  get 'pages/index'
  get 'pages/shipping'
  get 'pages/added_cart'
  get 'pages/billing_form'
  get 'pages/cart'
  post '/orders/new'
  post '/pages/step1'
  
  
  get 'pages/update_tea_bases', :as => 'update_tea_bases'
  get 'pages/update_tea_base_types', :as => 'update_tea_base_types'
  get "serving_styles/:serving_style_id/tea_bases" => "pages#tea_bases", :as => "related_tea_bases", :format => :json
  get 'pages/update_flavours', :as => 'update_flavours'

  root 'pages#home'

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
