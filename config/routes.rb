HealthWallet::Application.routes.draw do
  # Routes for the Condition resource:

  root "patients#index"

  # CREATE
  get '/conditions/new', controller: 'conditions', action: 'new', as: 'new_condition'
  post '/conditions', controller: 'conditions', action: 'create', as: 'conditions'

  # READ
  get '/conditions', controller: 'conditions', action: 'index'
  get '/conditions/:id', controller: 'conditions', action: 'show', as: 'condition'

  # UPDATE
  get '/conditions/:id/edit', controller: 'conditions', action: 'edit', as: 'edit_condition'
  patch '/conditions/:id', controller: 'conditions', action: 'update'

  # DELETE
  delete '/conditions/:id', controller: 'conditions', action: 'destroy'
  #------------------------------

  # Routes for the Doctor resource:
  # CREATE
  get '/doctors/new', controller: 'doctors', action: 'new', as: 'new_doctor'
  post '/doctors', controller: 'doctors', action: 'create', as: 'doctors'

  # READ
  get '/doctors', controller: 'doctors', action: 'index'
  get '/doctors/:id', controller: 'doctors', action: 'show', as: 'doctor'

  # UPDATE
  get '/doctors/:id/edit', controller: 'doctors', action: 'edit', as: 'edit_doctor'
  patch '/doctors/:id', controller: 'doctors', action: 'update'

  # DELETE
  delete '/doctors/:id', controller: 'doctors', action: 'destroy'
  #------------------------------

  # Routes for the Allergy resource:
  # CREATE
  get '/allergies/new', controller: 'allergies', action: 'new', as: 'new_allergy'
  post '/allergies', controller: 'allergies', action: 'create', as: 'allergies'

  # READ
  get '/allergies', controller: 'allergies', action: 'index'
  get '/allergies/:id', controller: 'allergies', action: 'show', as: 'allergy'

  # UPDATE
  get '/allergies/:id/edit', controller: 'allergies', action: 'edit', as: 'edit_allergy'
  patch '/allergies/:id', controller: 'allergies', action: 'update'

  # DELETE
  delete '/allergies/:id', controller: 'allergies', action: 'destroy'
  #------------------------------

  # Routes for the Medication resource:
  # CREATE
  get '/medications/new', controller: 'medications', action: 'new', as: 'new_medication'
  post '/medications', controller: 'medications', action: 'create', as: 'medications'

  # READ
  get '/medications', controller: 'medications', action: 'index'
  get '/medications/:id', controller: 'medications', action: 'show', as: 'medication'

  # UPDATE
  get '/medications/:id/edit', controller: 'medications', action: 'edit', as: 'edit_medication'
  patch '/medications/:id', controller: 'medications', action: 'update'

  # DELETE
  delete '/medications/:id', controller: 'medications', action: 'destroy'
  #------------------------------

  # Routes for the Patient resource:
  # CREATE
  get '/patients/new', controller: 'patients', action: 'new', as: 'new_patient'
  post '/patients', controller: 'patients', action: 'create', as: 'patients'

  # READ
  get '/patients', controller: 'patients', action: 'index'
  get '/patients/:id', controller: 'patients', action: 'show', as: 'patient'

  # UPDATE
  get '/patients/:id/edit', controller: 'patients', action: 'edit', as: 'edit_patient'
  patch '/patients/:id', controller: 'patients', action: 'update'

  # DELETE
  delete '/patients/:id', controller: 'patients', action: 'destroy'
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
