Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show] do
    resources :reviews, only: [:index]
  end

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
    resources :reviews, only: [:index] # see all reviews (~ cause the organizer user instance is linked to the job ~) when showing jobs
  end

  resources :applies, only: [:index, :destroy] do
    resources :reviews, only: [:create] # create a review from the list of applies (either organizerr and technicians)
  end
end
