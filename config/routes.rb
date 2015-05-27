Rails.application.routes.draw do
  devise_for :users
  match '/work/additional-projects' => 'projects#other', via: [:get]
  match '/work/festivals-events' => 'projects#festivals', via: [:get]
  match '/work/fitness-wellness' => 'projects#fitness', via: [:get]
  match '/work/education' => 'projects#education', via: [:get]
  match '/work/philanthropic' => 'projects#philanthropic', via: [:get]
  match '/work/pet-care' => 'projects#pet', via: [:get]
  match '/work/home-improvement' => 'projects#improvement', via: [:get]
  match '/work/high-impact-retail' => 'projects#retail', via: [:get]
  match '/work/healthcare' => 'projects#healthcare', via: [:get]
  match '/work/casual-dining' => 'projects#dining', via: [:get]
  match '/work/adult-beverages' => 'projects#beverages', via: [:get]
  match '/work/banking-financial' => 'projects#banking', via: [:get]
  match '/projects/category' => 'projects#category', via: [:get]
  resources :projects, :path => :work
  match '/blogs/category' => 'blogs#category', via: [:get]
  resources :blogs
  resources :bios
  resources :posts
  match '/strategy' => 'pages#strategy', via: [:get]
  match '/contact' => 'pages#contact', via: [:get]
  match '/culture' => 'pages#culture', via: [:get]
  root 'pages#index'
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
