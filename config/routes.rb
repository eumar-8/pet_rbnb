Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'dashboard/show'
  get "me", to: "dashboard#show"
  get 'design', to: 'pages#design'
  resources :pets do
    resources :bookings, only: [:create, :destroy ]
  end
  resources 'profile', only: [:show, :edit, :update]
end
