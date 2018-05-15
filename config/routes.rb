Rails.application.routes.draw do
  get 'dashboard/show'

  devise_for :users

  root to: 'pages#home'

  get "me", to: "dashboard#show"

  get 'design', to: 'pages#design'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pets do
    resources :bookings, only: [ :new, :create, :destroy ]
  end


end
