Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users

  resources :courses do
    resources :registrations, only: [:create, :destroy]
  end

  get "up" => "rails/health#show", as: :rails_health_check

end
