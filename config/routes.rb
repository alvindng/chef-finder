Rails.application.routes.draw do
  root :to => 'application#index'
  devise_for :users

  resources :users do
    resources :profiles
  end

  resources :profiles do
    resources :dishes
  end
end
