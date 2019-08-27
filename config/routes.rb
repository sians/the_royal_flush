Rails.application.routes.draw do
  resources :toilets
  devise_for :users
  root to: 'pages#home'
  get 'test', to: 'pages#test', as: 'test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
