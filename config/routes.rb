Rails.application.routes.draw do

  resources :toilets do
    resources :bookings, only: %i[new create edit update]
  end
  resources :bookings do
    resources :reviews, only: %i[new create]
  end
  devise_for :users
  root to: 'pages#home'
  get 'test', to: 'pages#test', as:'test'
  get 'profile', to: 'pages#profile', as: 'profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
