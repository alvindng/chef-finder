Rails.application.routes.draw do
  root :to => 'application#index'
  devise_for :users
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
