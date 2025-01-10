Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  authenticated :user do
    root to: redirect(ENV['FE_LANDING_URL'] || 'http://localhost:4000'), as: :authenticated_root
  end
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  namespace :api do
    namespace :v1 do
      resources :messages, only: [:create, :show, :destroy]
      resources :users, only: [:create, :show, :destroy]
      resources :conversations, only:  [:index, :show, :create, :update, :destroy]do
        resources :messages, only: [:create, :index, :show, :destroy]
      end
    end
  end
  

  resources :users, only: [:index, :show]
  resources :conversations, only: [:index, :show, :create] do
    resources :messages, only: [:create, :index, :show, :destroy]
  end

end
