Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  # resources :ebikes, only: %w[index show new create destroy update] do
  #   # resources :bookings, only: %w[index show new create delete update]
  #   resources :bookings, only: %w[new create]
  # end
  # # test to see what
  # resources :bookings, only: %w[index destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
