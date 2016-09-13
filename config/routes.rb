Rails.application.routes.draw do
  resources :chefs do
    resources :dishes
  end
end
