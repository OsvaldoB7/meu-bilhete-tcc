Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  resources :events, only: [:index, :show]
  get 'checkout', to: 'events#checkout', as: 'checkout'

end
