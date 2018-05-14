Rails.application.routes.draw do
  devise_for :users
  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/destroy'

  get 'pets/index'

  get 'pets/create'

  get 'pets/new'

  get 'pets/show'

  get 'pets/edit'

  get 'pets/update'

  get 'pets/destroy'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/destroy'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :edit, :destroy ]
  resources :pets do
    resources :bookings, only: [ :new, :create, :destroy ]
  end
end
