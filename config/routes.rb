Rails.application.routes.draw do
  # http://guides.rubyonrails.org/routing.html

  # User Zone
  devise_for :users,
    path: 'users',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      password: 'secret',
      #confirmation: 'verification',
      #unlock: 'unblock',
      #registration: 'register',
      sign_up: 'register'
  }
  authenticate :user do
    namespace :users do
      resources :things # /users/things
      root 'things#index'
    end
  end

  # Admin Zone
  devise_for :admins,
    path: 'admins',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      password: 'secret',
      #confirmation: 'verification',
      #unlock: 'unblock',
      #registration: 'register',
      sign_up: 'register'
  }
  authenticate :admin do
    namespace :admins do
      resources :things # /admins/things
      root 'things#index'
    end
  end

  root 'pages#home'
end
