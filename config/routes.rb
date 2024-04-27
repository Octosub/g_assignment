Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users

  resources :courses do
    resources :registrations, only: [:create]
  end

  resources :registrations, only: [:index, :destroy]



  
  get "up" => "rails/health#show", as: :rails_health_check
end
