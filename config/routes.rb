Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get 'design', to: 'pages#design'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :edit, :destroy ]
  resources :pets do
    resources :bookings, only: [ :new, :create, :destroy ]
  end
end
