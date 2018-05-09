Rails.application.routes.draw do
  resources :charges

  resources :events do
      resources :participations
end
  devise_for :users
  resources :users, only: [:show]
  root 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
