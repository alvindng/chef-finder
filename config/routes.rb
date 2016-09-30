Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  root :to => 'profiles#index'

  resources :users do
    resources :dishes
  end

end
