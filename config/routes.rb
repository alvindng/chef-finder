Rails.application.routes.draw do
  devise_for :users
  root :to => 'chefs#index'

  resources :chefs do
    resources :dishes
  end
end
