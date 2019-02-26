Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users

  namespace :organizer do
    resources :events do
      resources :jobs, only: [:create]
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

  resources :applies, only: [:index, :destroy]
end
