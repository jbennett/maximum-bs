Rails.application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new do
    resources :snakes, only: %i[new create show edit update]

    root to: 'dashboards#show'
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: "clearance/sessions#new"
  end
end
