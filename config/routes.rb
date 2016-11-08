Rails.application.routes.draw do
  resources :events
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
end
