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

  # post 'profile', to: 'organizer/events#create', as: 'create_event_profile'
  # post 'profile', to: 'jobs#create', as: 'create_job_event_profile'



  get  'profile', to: 'pages#profile', as: :profile
  post 'profile', to: 'have_skills#create', as: 'add_skill_profile'
  delete 'profile', to: 'have_skills#destroy'

  resources :applies, only: [:index, :update, :destroy]
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end
