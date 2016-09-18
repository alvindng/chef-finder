Rails.application.routes.draw do
  devise_for :users
  root :to => 'application#index'

  resources :users do
    resources :dishes
  end

end
