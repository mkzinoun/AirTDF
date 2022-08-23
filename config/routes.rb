Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :bikes
  get "dashboard", to: "dashboards#mydashboard", as: "dashboard"
end
