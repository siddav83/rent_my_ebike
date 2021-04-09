Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :ebikes, only: %w[index new show create destroy update] do
    # resources :bookings, only: %w[index show new create delete update]
    resources :bookings, only: %w[new create]
  end
  # test to see what
  resources :bookings, only: %w[index destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
