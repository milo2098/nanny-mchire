Rails.application.routes.draw do
  devise_for :users do
    resources :grandparents, only: [:index, :new, :create]
  end
  root to: "pages#home"

  resources :grandparents do
    resources :bookings, only: [:new, :create, :index ]
  end
  resources :bookings, only: [] do
    collection do
      get :my_bookings
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
