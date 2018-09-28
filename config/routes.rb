Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root to: "home#index", as: "home"
  end
  unauthenticated :user do
    root 'static_pages#index'
  end

  resources :tweets, except: [:new, :edit] do
    member do
      post :reply
    end
  end
  resources :users, except: [:new, :create] do
    member do
      get 'followers'
      get 'following'
      get 'favorites'
      get 'retweets'
    end
  end

  resources :relationships, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :retweets, only: [:create, :destroy]
  resources :find_friends, only: :index
end
