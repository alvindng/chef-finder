Rails.application.routes.draw do
  devise_for :users
  root :to => 'profiles#index'

  resources :users do
    resources :profiles
  end

  resources :profiles do
    resources :dishes
  end

end
