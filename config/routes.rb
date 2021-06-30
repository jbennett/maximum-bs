Rails.application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new do
    resources :snakes, only: %i[new create show edit update]

    root to: 'dashboards#show'
  end

  constraints Clearance::Constraints::SignedOut.new do
    scope :battle, defaults: { format: 'json' } do
      get ':id', to: 'api/snakes#show'
    end

    root to: 'clearance/sessions#new', as: :signed_out_root
  end
end
