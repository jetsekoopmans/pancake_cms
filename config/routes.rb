PancakeCms::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  match '/pages/contact',  to: 'forms#new',            via: 'get'
  match '/pages/news',  to: 'news#index',            via: 'get'
  match '/pages/:url',  to: 'pages#index',            via: 'get'
  match 'pages/news/:url',  to: 'news#show',            via: 'get'
  match 'pages/news',  to: 'news#index',            via: 'get'



  root :to => 'pages#index'

  get '/admin/contact/', to: redirect('/admin/contact/1')
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources "forms", only: [:new, :create]

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
