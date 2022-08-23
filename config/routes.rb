Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bikes do
    resources :bookings, only: [:create]
  end

  get "dashboard", to: "dashboards#mydashboard", as: "dashboard"

end
