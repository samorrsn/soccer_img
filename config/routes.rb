STM::Application.routes.draw do

  get "team_member_private_message/new"
  get "team_member_private_message/create"
  get "team_member_private_message/destroy"
  resources :player_positions
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :teams do

    resources :events
    resources :team_members
    resources :team_players
    resources :team_coaches
  end
  resources :positions
  resources :team_member_availabilities
resource :calendar, :only => [:show]
resources :events

match '/teams/:id/player_positions/:player_id', to: 'teams#player_positions', via: 'get'
match '/teams/:id/schedule', to: 'teams#schedule', via: 'get', as: 'schedule'
match '/teams/:id/player_availabilities', to: 'teams#player_availabilities', via: 'get', as: 'availabilities'
match '/teams/:id/player_stats', to: 'teams#player_stats', via: 'get', as: 'player_stats'
match '/teams/:id/player_availabilites', to: 'teams#player_availabilities', as: 'player_availabilities', via: 'get'
match '/teams/:id/member_messages/:member_id', to: 'teams#member_messages', via: 'get'

# Used only as a json response, will either change or add a redirect for http from this route.
#       Use teams route to see team_member messages.
match '/team_member_private_message/:id', to: 'team_member_private_message#get_message', via: 'get'

root  'static_pages#home'
match '/signup',  to: 'users#new',            via: 'get'
match '/login',  to: 'sessions#new',         via: 'get'
match '/logout', to: 'sessions#destroy',     via: 'delete'









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
