STM::Application.routes.draw do

  resources :player_positions
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/login',  to: 'sessions#new',         via: 'get'
  match '/logout', to: 'sessions#destroy',     via: 'delete'

  match 'teams/:id/profile', to: 'teams#profile', as: 'profile', via: 'get'
  get "team_members/new"
  get "team_members/profile"
  get "team_members/edit"
  get "team_players/new"
  get "team_players/profile"
  get "team_players/edit"

  # get "calendar/index"
  get "statistics/index"
  get '/teams/:id/profile', to: 'teams#profile'
  get '/teams/:id/schedule', to: 'teams#schedule'
  get '/teams/:id/players', to: 'teams#players'
  #get '/teams/:id/positions', to: 'teams#profile'
  # get '/teams/:id/player_availabilites', to: 'teams#player_availabilities'
  match '/teams/:id/player_availabilites', to: 'teams#player_availabilities', as: 'player_availabilities', via: 'get'

  resources :team_members
  resources :teams
  resources :team_member_availabilities
  resources :team_players

  get "static_pages/home"
  match '/calendar', to: 'calendar#index',  via: 'get'
  #match '/login', to: 'login#index',  via: 'get'
  resources :notes
  get 'notes/index'

  get 'team_members/:id/note', to: 'team_members#note'










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
