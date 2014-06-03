Rails.application.routes.draw do
  # Routes for the Idea resource:
  # CREATE
  devise_for :users

  root 'ideas#index'

  get('/ideas/new', { :controller => 'ideas', :action => 'new' })
  get('/create_idea', { :controller => 'ideas', :action => 'create' })

  # READ
  get('/ideas', { :controller => 'ideas', :action => 'index' })
  get('/ideas/:id', { :controller => 'ideas', :action => 'show' })

  # UPDATE
  get('/ideas/:id/edit', { :controller => 'ideas', :action => 'edit' })
  get('/update_idea/:id', { :controller => 'ideas', :action => 'update' })

  # DELETE
  get('/delete_idea/:id', { :controller => 'ideas', :action => 'destroy' })
  #------------------------------


  # Routes for the Click resource:
  # CREATE

  get('/clicks/new', { :controller => 'clicks', :action => 'new' })
  get('/create_click', { :controller => 'clicks', :action => 'create' })

  # READ
  get('/clicks', { :controller => 'clicks', :action => 'index' })
  get('/clicks/:id', { :controller => 'clicks', :action => 'show' })

  # UPDATE
  get('/clicks/:id/edit', { :controller => 'clicks', :action => 'edit' })
  get('/update_click/:id', { :controller => 'clicks', :action => 'update' })

  # DELETE
  get('/delete_click/:id', { :controller => 'clicks', :action => 'destroy' })
  #------------------------------

  # Routes for the Activity resource:
  # CREATE
  get('/activities/new', { :controller => 'activities', :action => 'new' })
  get('/create_activity', { :controller => 'activities', :action => 'create' })

  # READ
  get('/activities', { :controller => 'activities', :action => 'index' })
  get('/activities/:id', { :controller => 'activities', :action => 'show' })

  # UPDATE
  get('/activities/:id/edit', { :controller => 'activities', :action => 'edit' })
  get('/update_activity/:id', { :controller => 'activities', :action => 'update' })

  # DELETE
  get('/delete_activity/:id', { :controller => 'activities', :action => 'destroy' })

  #------------------------------

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
