Rails.application.routes.draw do
  root :to => "application#index"
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :chefs do
    resources :dishes
  end
end
