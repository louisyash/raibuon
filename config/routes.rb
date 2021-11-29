Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :performances, only: %i[index show new create] do
    resources :tips, only: %i[new create]
    resources :messages, only: %i[create]
  end

  resources :tips, only: :show do
    resources :payments, only: :new
  end

  resources :artists, only: %i[new create show]
  namespace :artist do
    resources :performances, only: %i[index show]
  end

end
