Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  authenticated :user do
    root to: 'conversations#index', as: :authenticated_root # Redirect to conversations page
  end

  unauthenticated :user do
    root to: redirect('http://localhost:3000/users/sign_in') # Redirect to login page
  end
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'devise/sessions',
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

  # get 'debug_chat', to: 'conversations#debug_chat'  # This would show all messages or data for debugging
end
