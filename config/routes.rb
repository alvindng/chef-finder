Rails.application.routes.draw do
  root :to => 'chefs#index'

  resources :chefs do
    resources :dishes
  end
end
