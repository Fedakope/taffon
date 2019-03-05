Rails.application.routes.draw do
  mount Notifications::Engine => "/notifications"

  root to: "pages#home"

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", :registrations => "my_registrations" }

  resources :users, only: [:index, :show] do
    resources :reviews, only: [:create]
  end

  namespace :organizer do
    resources :events do
      resources :jobs, only: [:new, :create, :destroy]
    end
    resources :applies, only: [:create] do
      resources :users, only: []
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
  delete 'profile', to: 'have_skills#destroy'

  resources :applies, only: [:index, :update, :destroy]

end
