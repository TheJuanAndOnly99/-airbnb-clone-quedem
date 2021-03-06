Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :experiences, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [ :new, :create ]
  end

  resources :bookings, only: :destroy do
    resources :reviews, only: [ :new, :create]
    member do
      get '/confirm', to: 'bookings#confirm'
      get '/reject', to: 'bookings#reject'
    end
  end

  get '/mybookings', to: 'dashboards#mybookings', as: :mybookings
  get '/myexperiences', to: 'dashboards#myexperiences', as: :myexperiences

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
