Rails.application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new do
    resources :snakes, only: %i[new create show edit update]

    root to: 'snakes#index'
  end

  constraints Clearance::Constraints::SignedOut.new do
    scope :battle, defaults: { format: 'json' } do
      get 'snakes/:id', to: 'api/snakes#show'
      post 'snakes/:id/start', to: 'api/games#create'
      post 'snakes/:id/move', to: 'api/moves#create'
      post 'snakes/:id/end', to: 'api/games#destroy'
    end

    root to: 'clearance/sessions#new', as: :signed_out_root
  end
end
