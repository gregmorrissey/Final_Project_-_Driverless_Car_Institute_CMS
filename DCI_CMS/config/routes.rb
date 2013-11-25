DCICms::Application.routes.draw do
  # Routes for the Topic resource:
  # CREATE
  get '/topics/new', controller: 'topics', action: 'new', as: 'new_topic'
  post '/topics', controller: 'topics', action: 'create', as: 'topics'

  # READ
  get '/topics', controller: 'topics', action: 'index'
  get '/topics/:id', controller: 'topics', action: 'show', as: 'topic'

  # UPDATE
  get '/topics/:id/edit', controller: 'topics', action: 'edit', as: 'edit_topic'
  patch '/topics/:id', controller: 'topics', action: 'update'

  # DELETE
  delete '/topics/:id', controller: 'topics', action: 'destroy'
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get '/tags/new', controller: 'tags', action: 'new', as: 'new_tag'
  post '/tags', controller: 'tags', action: 'create', as: 'tags'

  # READ
  get '/tags', controller: 'tags', action: 'index'
  get '/tags/:id', controller: 'tags', action: 'show', as: 'tag'

  # UPDATE
  get '/tags/:id/edit', controller: 'tags', action: 'edit', as: 'edit_tag'
  patch '/tags/:id', controller: 'tags', action: 'update'

  # DELETE
  delete '/tags/:id', controller: 'tags', action: 'destroy'
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get '/comments/new', controller: 'comments', action: 'new', as: 'new_comment'
  post '/comments', controller: 'comments', action: 'create', as: 'comments'

  # READ
  get '/comments', controller: 'comments', action: 'index'
  get '/comments/:id', controller: 'comments', action: 'show', as: 'comment'

  # UPDATE
  get '/comments/:id/edit', controller: 'comments', action: 'edit', as: 'edit_comment'
  patch '/comments/:id', controller: 'comments', action: 'update'

  # DELETE
  delete '/comments/:id', controller: 'comments', action: 'destroy'
  #------------------------------

  # Routes for the Post resource:
  # CREATE
  get '/posts/new', controller: 'posts', action: 'new', as: 'new_post'
  post '/posts', controller: 'posts', action: 'create', as: 'posts'

  # READ
  get '/posts', controller: 'posts', action: 'index'
  get '/posts/:id', controller: 'posts', action: 'show', as: 'post'

  # UPDATE
  get '/posts/:id/edit', controller: 'posts', action: 'edit', as: 'edit_post'
  patch '/posts/:id', controller: 'posts', action: 'update'

  # DELETE
  delete '/posts/:id', controller: 'posts', action: 'destroy'
  #------------------------------

  # Routes for the Search resource:
  # CREATE
  get '/searches/new', controller: 'searches', action: 'new', as: 'new_search'
  post '/searches', controller: 'searches', action: 'create', as: 'searches'

  # READ
  get '/searches', controller: 'searches', action: 'index'
  get '/searches/:id', controller: 'searches', action: 'show', as: 'search'

  # UPDATE
  get '/searches/:id/edit', controller: 'searches', action: 'edit', as: 'edit_search'
  patch '/searches/:id', controller: 'searches', action: 'update'

  # DELETE
  delete '/searches/:id', controller: 'searches', action: 'destroy'
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get '/favorites/new', controller: 'favorites', action: 'new', as: 'new_favorite'
  post '/favorites', controller: 'favorites', action: 'create', as: 'favorites'

  # READ
  get '/favorites', controller: 'favorites', action: 'index'
  get '/favorites/:id', controller: 'favorites', action: 'show', as: 'favorite'

  # UPDATE
  get '/favorites/:id/edit', controller: 'favorites', action: 'edit', as: 'edit_favorite'
  patch '/favorites/:id', controller: 'favorites', action: 'update'

  # DELETE
  delete '/favorites/:id', controller: 'favorites', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
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
