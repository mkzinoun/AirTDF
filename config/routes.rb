Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bikes do
    resources :bookings, only: %i[create update]
  end
  resources :bookings, only: [:destroy]
  get "dashboard", to: "dashboards#mydashboard", as: "dashboard"

end
