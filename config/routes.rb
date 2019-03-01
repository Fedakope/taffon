Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", :registrations => "my_registrations" }
  
  devise_for :users, only: [:edit, :show]

  resources :users, only: [:index, :show] do
    resources :reviews, only: [:create]
  end

  namespace :organizer do
    resources :events do
      resources :jobs, only: [:new, :create]
    end
    resources :jobs, only: [:destroy] do
      resources :applies, only: [:index]
    end

    resources :applies, only: [] do
      patch :accept
      patch :decline
    end
  end

  resources :jobs, only: [:index, :show] do
    resources :applies, only: [:create]
  end

  get  'profile', to: 'pages#profile', as: :profile
  post 'profile', to: 'have_skills#create'

  resources :applies, only: [:index, :update, :destroy]
end
