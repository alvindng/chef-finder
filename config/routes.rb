Rails.application.routes.draw do
  root :to => 'application#index'
  devise_for :users, :controllers => { :registration => "registration", :omniauth_callbacks => "callbacks" }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users do
    resources :profiles
  end

  resources :profiles do
    resources :dishes
  end

  resources :profiles do
    resources :events
  end

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply, :restore, :mark_as_read, :mark_as_unread
    end
    collection do
      delete :empty_trash
    end
  end

  resources :messages, only: [:new, :create]
end
